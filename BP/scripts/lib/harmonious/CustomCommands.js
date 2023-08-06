import { config } from "./config.js"

class CustomCommandsClass {
  constructor() {
    this.prefix = config.customCommandPrefix;
    this.commands = [];
  };
  
  addCommand(command) {
    for(let i = 0; i < this.commands.length; i++) {
      if(this.commands[i].name == command.name) {
        console.warn(config.consolePrefix + "A command with the name " + command.name + " already exists.");
        return false;
      } else {
        for(let j = 0; j < this.commands[i].aliases.length; j++) {
          for(let k = 0; k < command.aliases.length; k++) {
            if(this.commands[i].aliases[j] == command.aliases[k]) {
              console.warn(config.consolePrefix + "A command with the alias " + command.aliases[k] + " already exists.");
              return false;
            }
          }
        }
      }
    }
    this.commands.push({
      name: command.name, // Commands Name: string
      hidden: command.hidden, // Hide Command in 'prefix'help: bool
      aliases: command.aliases, // Command Aliases: string[]
      description: command.description, // Command Description: string
      usage: command.usage, // Command Usage: string[]
      examples: command.examples, // Command Examples: string[]
      args: command.args, // Command Arguments: string[]
      run: command.run // Code to Run: function
    });
    return true;
  };
  
  getCommand(command) {
    for(let i = 0; i < this.commands.length; i++) {
      if(this.commands[i].name == command) {
        return this.commands[i];
      } else {
        for(let j = 0; j < this.commands[i].aliases.length; j++) {
          if(this.commands[i].aliases[j] == command) {
            return this.commands[i];
          }
        }
      }
    }
    return false;
  };
  
  removeCommand(command) {
    for(let i = 0; i < this.commands.length; i++) {
      if(this.commands[i].name == command) {
        commands.remove(i);
        return true;
      } else {
        for(let j = 0; j < this.commands[i].aliases.length; j++) {
          if(this.commands[i].aliases[j] == command) {
            commands.remove(i);
            return true;
          }
        }
      }
    }
    console.warn(config.consolePrefix + "No command with the name " + command + " exists.");
    return false;
  };
  
  parseArgs(args, command) {
    for(let i = 0; i < command.args.length; i++) {
      if(args.length <= i) {
        break;
      }
      if(command.args[i] == "string") {
        continue;
      } else if(command.args[i] == "int") {
        let parsed = parseInt(args[i]);
        if(!isNaN(parsed)) {
          args[i] = parsed;
        } else {
          args[i] = {error: true};
        }
      } else if(command.args[i] == "float") {
        let parsed = parseFloat(args[i]);
        if(!isNaN(parsed)) {
          args[i] = parsed;
        } else {
          args[i] = {error: true};
        }
      } else if(command.args[i] == "number") {
        let parsed = Number(args[i]);
        if(!isNaN(parsed)) {
          args[i] = parsed;
        } else {
          args[i] = {error: true};
        }
      } else if(command.args[i] == "bool") {
        if(args[i] == "true") {
          args[i] = true;
        } else if(args[i] == "false") {
          args[i] = false;
        } else {
          args[i] = {error: true};
        }
      } else if(command.args[i] == "spaced_string") {
        if(!args[i].startsWith("\"")) {
          continue;
        }
        let end = -1;
        for(let j = i; j < args.length; j++) {
          if(args[i].endsWith("\"")) {
            end = j;
          }
        }
        if(end < i) {
          args[i] = {error: true};
        } else {
          let parsed = "";
          for(let j = i; j <= end; j++) {
            if(j === end && j === i) {
              args[i] = parsed + args[i].substring(1, args[i].length-1);
            } else if(j === end) {
              args[i] = parsed + args[i].substring(0, args[i].length-1);
            } else if(j === i) {
              parsed += args[i].substring(1) + " ";
              args.remove(i);
            } else {
              parsed += args[i] + " ";
              args.remove(i);
            }
          }
        }
      }
    }
    return args;
  };
};
export const CustomCommands = new CustomCommandsClass();