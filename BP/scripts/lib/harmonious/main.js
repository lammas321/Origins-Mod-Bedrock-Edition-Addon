import { world } from "mojang-minecraft";
import { config } from "./config.js";
import { CustomCommands } from "./CustomCommands.js";

export const OVERWORLD = world.getDimension("overworld");
export const NETHER = world.getDimension("nether");
export const THE_END = world.getDimension("the end");

class HarmoniousClass {
  constructor() {
    this.customCommands = CustomCommands;
    this._subscriptions();
  };
  
  _subscriptions() {
    world.events.beforeChat.subscribe(data => {
      if (!data.message.startsWith(this.customCommands.prefix))
        return;
      data.cancel = true;
      let args = data.message.slice(this.customCommands.prefix.length).trim().split(" ");
      let name = args[0].toLowerCase();
      let command = this.customCommands.getCommand(name);
      if (!command) {
        return this.runCommand(`tellraw "${data.sender.nameTag}" {"rawtext":[{"text":"§c"},{"translate":"commands.generic.unknown", "with": ["${name}§c"]}]}`);
      };
      args = this.customCommands.parseArgs(args.slice(1), command);
      command.run(data, args);
    });
  };
  
  runCommand(command, dimension) {
    if(dimension === undefined) {
      dimension = OVERWORLD;
    }
    try {
      return { error: false, ...dimension.runCommand(command) };
    } catch {
      return { error: true };
    }
  };
};

const Harmonious = new HarmoniousClass();
Harmonious.customCommands.addCommand({
  name: "help", // Commands Name: string
  hidden: false, // Hide Command in 'prefix'help: bool
  aliases: ["?"], // Command Aliases: string[]
  description: "Help command.", // Command Description: string
  usage: ["help [command]"], // Command Usage: string[]
  examples: [], // Command Examples: string[]
  args: ["string"], // Command Arguments: string[]
  run: (data, args) => {
    if(args.length === 0) {
      let commands = [];
      for(let i = 0; i < Harmonious.customCommands.commands.length; i++) {
        commands.push(Harmonious.customCommands.commands[i].name);
      }
      commands.sort();
      let message = "§eList of Custom Commands:";
      for(let i = 0; i < Harmonious.customCommands.commands.length; i++) {
        let command = Harmonious.customCommands.getCommand(commands[i]);
        if(!command.hidden) {
          message += "\n§r§e- " + Harmonious.customCommands.prefix + commands[i] + "§r§e   " + command.description;
        }
      }
      Harmonious.runCommand("tellraw " + data.sender.nameTag + "{\"rawtext\":[{\"text\":\"" + message + "\"}]}");
    } else {
      let command = Harmonious.customCommands.getCommand(args[0]);
      if(command) {
        let message = "§eCustom Command: " + Harmonious.customCommands.prefix + args[0] + "\n§r§e" + command.description;
        if(command.usage.length > 0) {
          message += "\n§r§eUsage:";
          for(let i = 0; i < command.usage.length; i++) {
            message += "\n§r§e- " + Harmonious.customCommands.prefix + command.usage[i];
          }
        }
        if(command.examples.length > 0) {
          message += "\n§r§eExamples:";
          for(let i = 0; i < command.usage.length; i++) {
            message += "\n§r§e- " + Harmonious.customCommands.prefix + command.examples[i];
          }
        }
        Harmonious.runCommand("tellraw " + data.sender.nameTag + "{\"rawtext\":[{\"text\":\"" + message + "\"}]}");
      } else {
        let message = "§c" + args[0] + " §r§cis not a valid custom command.";
        Harmonious.runCommand("tellraw " + data.sender.nameTag + "{\"rawtext\":[{\"text\":\"" + message + "\"}]}");
      }
    }
  } // Code to Run: function
});

export { Harmonious };