import { ExplosionOptions, EntityQueryOptions, world, MinecraftEffectTypes, Vector } from "mojang-minecraft";
import { ActionFormData } from "mojang-minecraft-ui";
import { Harmonious } from "../lib/harmonious/main.js";
import { system } from '@minecraft/server';

system.events.beforeWatchdogTerminate.subscribe((event) => {
  event.cancel = true;
});


let overworld = world.getDimension("overworld");
let nether = world.getDimension("nether");
let theEnd = world.getDimension("the end");

const naturalStone = ["minecraft:netherrack", "minecraft:basalt", "minecraft:blackstone", "minecraft:sandstone", "minecraft:red_sandstone"];
const naturalStoneTypes = ["stone", "granite", "diorite", "andesite"];

let cmdsToRun = [];

function runCmd(cmd, dim) {
  if (dim === undefined) {
    dim = overworld;
  }
  try {
    return { error: false, ...dim.runCommand(cmd) };
  } catch {
    return { error: true };
  }
}

function tellraw(player, msg) {
  return runCmd("tellraw " + player + '{"rawtext":[{"text":"' + msg + '"}]}')
}

function getTags(player) {
  const data = runCmd(`tag "${player}" list`);
  if (data.error)
    return [];
  let tags = data.statusMessage.match(/(?<=: ).*$/);
  if (tags) {
    tags = tags[0].split('§r, §a');
    for (let i = 0; i < tags.length; i++)
      tags[i] = String(tags[i].replace(/§./g, '').match(new RegExp(`^${tags[i].replace(/§./g, '')}$`)))
    return tags;
  }
  return [];
}

function hasTag(player, tag) {
  const allTags = getTags(player);
  if (!allTags)
    return false;
  for (const playerTag of allTags)
    if (tag == playerTag)
      return true;
  return false;
}

function addTag(player, tag) {
  return runCmd(`tag "${player}" add "${tag}"`);
}

function removeTag(player, tag) {
  return runCmd(`tag "${player}" remove "${tag}"`);
}

function getScore(player, scoreboard, { minimum, maximum } = {}) {
  const data = runCmd(`scoreboard players test "${player}" ${scoreboard} ${minimum ? minimum : '*'} ${maximum ? maximum : '*'}`);
  if (data.error)
    return;
  return parseInt(data.statusMessage.match(/-?\d+/)[0]);
}

function findPlayerDimension(player) {
  return world.getDimension(["overworld", "nether", "the end"][getScore(player, "od:dim")]);
}


Harmonious.customCommands.addCommand({
  name: "info", // Commands Name: string
  hidden: false, // Hide Command in 'prefix'help: bool
  aliases: [], // Command Aliases: string[]
  description: "See information about the Origins addon.", // Command Description: string
  usage: ["info"], // Command Usage: string[]
  examples: [], // Command Examples: string[]
  args: [], // Command Arguments: string[]
  run: (data, args) => {
    tellraw(data.sender.name, "§dOrigins §aaddon created by §blammas123 §aon §cYouTube\n§bDiscord §aServer: §fdiscord.gg/Mypr3MqpcP\n§aVersion: §fv1.3.9");
  } // Code to Run: function
});

Harmonious.customCommands.addCommand({
  name: "my_origin", // Commands Name: string
  hidden: false, // Hide Command in 'prefix'help: bool
  aliases: [], // Command Aliases: string[]
  description: "See what origin you have and it's description and powers.", // Command Description: string
  usage: ["my_origin"], // Command Usage: string[]
  examples: [], // Command Examples: string[]
  args: [], // Command Arguments: string[]
  run: (data, args) => {
    addTag(data.sender.name, "origins:display_viewing_ui");
    tellraw(data.sender.name, "Close the chat and move to view your origin.");
    runCmd("execute " + data.sender.name + " ~~~ tp @e[type=origins:ui,c=1] ~ -63~", findPlayerDimension(data.sender.name));
  } // Code to Run: function
});

Harmonious.customCommands.addCommand({
  name: "origin_of", // Commands Name: string
  hidden: false, // Hide Command in 'prefix'help: bool
  aliases: [], // Command Aliases: string[]
  description: "See what origin someone has.", // Command Description: string
  usage: ["origin_of <player>"], // Command Usage: string[]
  examples: [], // Command Examples: string[]
  args: ["spaced_string"], // Command Arguments: string[]
  run: (data, args) => {
    if (args[0].substring(0, 1) == "@" && args[0].length > 2) {
      tellraw(data.sender.name, "§cCan't use selector brackets.");
      return;
    }
    if (args[0].substring(0, 2) == "@e") {
      tellraw(data.sender.name, "§cCan't use @e selector.");
      return;
    }
    if (args[0].substring(0, 2) == "@s" || args[0].substring(0, 2) == "@p") {
      args[0] = data.sender.name;
    }
    if (args[0].substring(0, 1) != "@") {
      args[0] = "\"" + args[0] + "\"";
    }
    addTag(data.sender.name, "origins:view_origin_of");
    addTag(args[0], "origins:tell_origin_to");
  } // Code to Run: function
});

Harmonious.customCommands.addCommand({
  name: "settings", // Commands Name: string
  hidden: false, // Hide Command in 'prefix'help: bool
  aliases: [], // Command Aliases: string[]
  description: "Settings ui for the Origins addon.", // Command Description: string
  usage: ["settings"], // Command Usage: string[]
  examples: [], // Command Examples: string[]
  args: [], // Command Arguments: string[]
  run: (data, args) => {
    if (!hasTag(data.sender.name, "origins:op")) {
      return tellraw(data.sender.name, "§cInsufficient permission. Missing the 'origins:op' tag.")
    }
    addTag(data.sender.name, "origins:show_settings_ui");
    tellraw(data.sender.name, "Close the chat and move to view the settings ui.");
  } // Code to Run: function
});

world.events.tick.subscribe(data => {
  for (let i = cmdsToRun.length - 1; i >= 0; i--) {
    cmdsToRun[i][1]--;
    if (cmdsToRun[i][1] == 0) {
      if (cmdsToRun[i].length == 2) {
        runCmd(cmdsToRun[i][0]);
      } else {
        runCmd(cmdsToRun[i][0], cmdsToRun[i][2]);
      }
      cmdsToRun.splice(i, 1);
    }
  }
  runCmd("tag @e remove origins:power_bloodthirsty_entity");
  let players = Array.from(world.getPlayers());
  let query = null;
  let entities = null;
  for (let i = 0; i < players.length; i++) {
    if (hasTag(players[i].name, "origins:show_settings_ui") && (getScore(players[i].name, "od:moving") === 1 || getScore(players[i].name, "od:attacking") === 1)) {
      removeTag(players[i].name, "origins:show_settings_ui");
      let form = new ActionFormData()
        .title("Origins Settings")
        .body("What would you like to do?")
        .button("Reset your Origin")
        .button("Recount Origins")
        .button("Double Initialize Fix")
        .button("Last Resort Reset")
        .button("Configure Origins");
      form.show(players[i]).then(response => {
        if (response.isCanceled) return;
        switch (response.selection) {
          case 0:
            tellraw(players[i].name, "Running /function origins/cmd/reset_origin");
            runCmd("function origins/cmd/reset_origin", players[i]);
            break;
          case 1:
            tellraw(players[i].name, "Running /function origins/cmd/recount_origins");
            runCmd("function origins/cmd/recount_origins", players[i]);
            break;
          case 2:
            tellraw(players[i].name, "Running /function origins/cmd/double_initialize_fix");
            runCmd("function origins/cmd/double_initialize_fix", players[i]);
            break;
          case 3:
            tellraw(players[i].name, "Running /function origins/cmd/last_resort_reset");
            runCmd("function origins/cmd/last_resort_reset", players[i]);
            break;
          case 4:
            form = new ActionFormData()
              .title("Origins Settings")
              .body("What would you like to do?")
              .button("Make Random Autoselect")
              .button("Make Random Manual Select")
              .button("Make all Origins Selectable")
              .button("Make all Origins Unselectable")
              .button("Make all Origins Unusable")
              .button("Make all Origins Randomly Selectable")
              .button("Make all Origins not Randomly Selectable")
              .button("Configure Origin Groups")
              .button("Configure Specific Origins");
            form.show(players[i]).then(response => {
              if (response.isCanceled) return;
              switch (response.selection) {
                case 0:
                  tellraw(players[i].name, "Running /function origins/config/random_autoselect");
                  runCmd("function origins/config/random_autoselect", players[i]);
                  break;
                case 1:
                  tellraw(players[i].name, "Running /function origins/config/random_manual_select");
                  runCmd("function origins/config/random_manual_select", players[i]);
                  break;
                case 2:
                  tellraw(players[i].name, "Running /function origins/config/usability_selectable");
                  runCmd("function origins/config/usability_selectable", players[i]);
                  break;
                case 3:
                  tellraw(players[i].name, "Running /function origins/config/usability_unselectable");
                  runCmd("function origins/config/usability_unselectable", players[i]);
                  break;
                case 4:
                  tellraw(players[i].name, "Running /function origins/config/usability_unusable");
                  runCmd("function origins/config/usability_unusable", players[i]);
                  break;
                case 5:
                  tellraw(players[i].name, "Running /function origins/config/random_selection_allow");
                  runCmd("function origins/config/random_selection_allow", players[i]);
                  break;
                case 6:
                  tellraw(players[i].name, "Running /function origins/config/random_selection_deny");
                  runCmd("function origins/config/random_selection_deny", players[i]);
                  break;
                case 7:
                  query = new EntityQueryOptions();
                  query.families = ["origin_group_entity"];
                  entities = Array.from(overworld.getEntities(query));
                  form = new ActionFormData()
                    .title("Origins Settings")
                    .body("Select an origin group.");
                  entities.forEach(j => {
                    form = form.button(j.id.replace("origins:origin_group_", ""));
                  });
                  form.show(players[i]).then(response => {
                    if (response.isCanceled) return;
                    let group = entities[response.selection].id.replace("origins:origin_group_", "");
                    let form1 = new ActionFormData()
                      .title("Origins Settings")
                      .body("What would you like to do for the " + group + " origin group?")
                      .button("Make all Origins Selectable")
                      .button("Make all Origins Unselectable")
                      .button("Make all Origins Unusable")
                      .button("Make all Origins Randomly Selectable")
                      .button("Make all Origins not Randomly Selectable");
                    form1.show(players[i]).then(response => {
                      if (response.isCanceled) return;
                      switch (response.selection) {
                        case 0:
                          tellraw(players[i].name, "Running /function origins/config/" + group + "/usability_selectable");
                          runCmd("function origins/config/" + group + "/usability_selectable", players[i]);
                          break;
                        case 1:
                          tellraw(players[i].name, "Running /function origins/config/" + group + "/usability_unselectable");
                          runCmd("function origins/config/" + group + "/usability_unselectable", players[i]);
                          break;
                        case 2:
                          tellraw(players[i].name, "Running /function origins/config/" + group + "/usability_unusable");
                          runCmd("function origins/config/" + group + "/usability_unusable", players[i]);
                          break;
                        case 3:
                          tellraw(players[i].name, "Running /function origins/config/" + group + "/random_selection_allow");
                          runCmd("function origins/config/" + group + "/random_selection_allow", players[i]);
                          break;
                        case 4:
                          tellraw(players[i].name, "Running /function origins/config/" + group + "/random_selection_deny");
                          runCmd("function origins/config/" + group + "/random_selection_deny", players[i]);
                          break;
                      }
                    });
                  });
                  break;
                case 8:
                  query = new EntityQueryOptions();
                  query.families = ["origin_entity"];
                  entities = Array.from(overworld.getEntities(query));
                  form = new ActionFormData()
                    .title("Origins Settings")
                    .body("Select an origin.");
                  entities.forEach(j => {
                    form = form.button(j.id.replace("origins:origin_", "").split("_").slice(1).join("_"));
                  });
                  form.show(players[i]).then(response => {
                    if (response.isCanceled) return;
                    let group = entities[response.selection].id.replace("origins:origin_", "").split("_").shift();
                    let origin = entities[response.selection].id.replace("origins:origin_", "").split("_").slice(1).join("_");
                    form = new ActionFormData()
                      .title("Origins Settings")
                      .body("What would you like to do for the " + origin + " origin?")
                      .button("Make Selectable")
                      .button("Make Unselectable")
                      .button("Make Unusable")
                      .button("Make Randomly Selectable")
                      .button("Make not Randomly Selectable");
                    form.show(players[i]).then(response => {
                      if (response.isCanceled) return;
                      switch (response.selection) {
                        case 0:
                          tellraw(players[i].name, "Running /function origins/config/" + group + "/origin/" + origin + "/usability_selectable");
                          runCmd("function origins/config/" + group + "/origin/" + origin + "/usability_selectable", players[i]);
                          break;
                        case 1:
                          tellraw(players[i].name, "Running /function origins/config/" + group + "/origin/" + origin + "/usability_unselectable");
                          runCmd("function origins/config/" + group + "/origin/" + origin + "/usability_unselectable", players[i]);
                          break;
                        case 2:
                          tellraw(players[i].name, "Running /function origins/config/" + group + "/origin/" + origin + "/usability_unusable");
                          runCmd("function origins/config/" + group + "/origin/" + origin + "/usability_unusable", players[i]);
                          break;
                        case 3:
                          tellraw(players[i].name, "Running /function origins/config/" + group + "/origin/" + origin + "/random_selection_allow");
                          runCmd("function origins/config/" + group + "/origin/" + origin + "/random_selection_allow", players[i]);
                          break;
                        case 4:
                          tellraw(players[i].name, "Running /function origins/config/" + group + "/origin/" + origin + "/random_selection_deny");
                          runCmd("function origins/config/" + group + "/origin/" + origin + "/random_selection_deny", players[i]);
                          break;
                      }
                    });
                  });
                  break;
              }
            });
            break;
        }
      });
    }
    if (hasTag(players[i].name, "origins:power_phasing_crouch_start")) {
      runCmd("execute " + players[i].name + " ~~~ structure save origins:power_phasing_player" + getScore(players[i].name, "origin:playerid") + " ~~1.5~ ~~1.5~", findPlayerDimension(players[i].name));
      runCmd("execute " + players[i].name + " ~~~ setblock ~~1.5~ leaves 3", findPlayerDimension(players[i].name));
      removeTag(players[i].name, "origins:power_phasing_crouch_start");
    } else if (hasTag(players[i].name, "origins:power_phasing_crouch_end")) {
      runCmd("execute " + players[i].name + " ~~~ structure load origins:power_phasing_player" + getScore(players[i].name, "origin:playerid") + " ~~1.5~", findPlayerDimension(players[i].name));
      removeTag(players[i].name, "origins:power_phasing_crouch_end");
    } else if (hasTag(players[i].name, "origins:power_bloodthirsty")) {
      query = new EntityQueryOptions();
      query.location = players[i].location;
      query.maxDistance = 15;
      query.families = ["mob"];
      query.excludeFamilies = ["monster"];
      query.excludeTypes = ["ender_dragon"];
      entities = Array.from(players[i].dimension.getEntities(query));
      entities.forEach(entity => {
        const h = entity.getComponent("health");
        if (h.current < h.value) entity.addTag("origins:power_bloodthirsty_entity");
      });
    }
  }
});

world.events.blockBreak.subscribe(data => {
  let player = data.player;
  let dimension = data.dimension;
  let permutation = data.brokenBlockPermutation;
  let block = permutation.type;
  let pos = data.block.location;
  if (hasTag(player.name, "origins:power_weak_arms")) {
    if (!runCmd(`testfor @a[name="${player.name}",m=c]`, dimension).error) {
      return;
    }
    if (player.getEffect(MinecraftEffectTypes.strength) != undefined) {
      return;
    }
    if (naturalStone.includes(block.id) || (block.id == "minecraft:stone" && naturalStoneTypes.includes(permutation.getProperty("stone_type").value))) {
      let adjacentStones = 0;
      if (naturalStone.includes(dimension.getBlock(pos.offset(1, 0, 0)).id) || (dimension.getBlock(pos.offset(1, 0, 0)).id == "minecraft:stone" && naturalStoneTypes.includes(dimension.getBlock(pos.offset(1, 0, 0)).permutation.getProperty("stone_type").value))) {
        adjacentStones++;
      }
      if (naturalStone.includes(dimension.getBlock(pos.offset(-1, 0, 0)).id) || (dimension.getBlock(pos.offset(-1, 0, 0)).id == "minecraft:stone" && naturalStoneTypes.includes(dimension.getBlock(pos.offset(-1, 0, 0)).permutation.getProperty("stone_type").value))) {
        adjacentStones++;
      }
      if (naturalStone.includes(dimension.getBlock(pos.offset(0, 1, 0)).id) || (dimension.getBlock(pos.offset(0, 1, 0)).id == "minecraft:stone" && naturalStoneTypes.includes(dimension.getBlock(pos.offset(0, 1, 0)).permutation.getProperty("stone_type").value))) {
        adjacentStones++;
      }
      if (naturalStone.includes(dimension.getBlock(pos.offset(0, -1, 0)).id) || (dimension.getBlock(pos.offset(0, -1, 0)).id == "minecraft:stone" && naturalStoneTypes.includes(dimension.getBlock(pos.offset(0, -1, 0)).permutation.getProperty("stone_type").value))) {
        adjacentStones++;
      }
      if (naturalStone.includes(dimension.getBlock(pos.offset(0, 0, 1)).id) || (dimension.getBlock(pos.offset(0, 0, 1)).id == "minecraft:stone" && naturalStoneTypes.includes(dimension.getBlock(pos.offset(0, 0, 1)).permutation.getProperty("stone_type").value))) {
        adjacentStones++;
      }
      if (naturalStone.includes(dimension.getBlock(pos.offset(0, 0, -1)).id) || (dimension.getBlock(pos.offset(0, 0, -1)).id == "minecraft:stone" && naturalStoneTypes.includes(dimension.getBlock(pos.offset(0, 0, -1)).permutation.getProperty("stone_type").value))) {
        adjacentStones++;
      }
      if (adjacentStones > 2) {
        if (naturalStone.includes(block.id)) {
          runCmd(`setblock ${pos.x} ${pos.y} ${pos.z} ${block.id}`, dimension);
        } else {
          let stoneData = permutation.getProperty("stone_type").value;
          if (stoneData == "stone") {
            stoneData = 0;
          } else if (stoneData == "granite") {
            stoneData = 1;
          } else if (stoneData == "diorite") {
            stoneData = 3;
          } else if (stoneData == "andesite") {
            stoneData = 5;
          }
          runCmd(`setblock ${pos.x} ${pos.y} ${pos.z} stone ${stoneData}`, dimension);
        }
        cmdsToRun.push([`execute "${player.name}" ${pos.x} ${pos.y} ${pos.z} kill @e[type=item,c=1,r=2]`, 1, dimension]);
      }
    }
  } else if (hasTag(player.name, "origins:power_break_stone") && getScore(player.name, "od:hold") === 0 && runCmd(`testfor @a[name="${player.name}",m=c]`, dimension).error && (naturalStone.includes(block.id) || (block.id == "minecraft:stone" && naturalStoneTypes.includes(permutation.getProperty("stone_type").value)))) {
    if (naturalStone.includes(block.id)) {
      runCmd(`setblock ${pos.x} ${pos.y} ${pos.z} ${block.id}`, dimension);
    } else {
      let stoneData = permutation.getProperty("stone_type").value;
      if (stoneData == "stone") {
        stoneData = 0;
      } else if (stoneData == "granite") {
        stoneData = 1;
      } else if (stoneData == "diorite") {
        stoneData = 3;
      } else if (stoneData == "andesite") {
        stoneData = 5;
      }
      runCmd(`setblock ${pos.x} ${pos.y} ${pos.z} stone ${stoneData}`, dimension);
    }
    runCmd(`setblock ${pos.x} ${pos.y} ${pos.z} air 0 destroy`, dimension);
  }
});

world.events.itemCompleteCharge.subscribe(data => {
  let source = data.source;
  let item = data.itemStack;
  if (hasTag(source.name, "origins:power_gills") && item.id === "minecraft:potion") {
    runCmd("effect @s water_breathing 1 0 true", source);
  }
});