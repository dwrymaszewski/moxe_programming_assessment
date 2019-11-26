// Generated by CoffeeScript 2.4.1
(function() {
  // initialize_goods
  // initialize_catalog
  // initialize_taxes
  var bad_command_message, command_line, demo_commands, input_handler, main_prompt, readline, recognized_commands;

  readline = require('readline');

  demo_commands = require('./demo_baskets').demo_commands;

  main_prompt = 'Howdy!\nTry typing the commands:\n"demo_basket_1"\n"demo_basket_2"\n"demo_basket_3"\nor try your luck at "custom_basket" (pre-pre-alpha)\n\nType "exit" to quit.\n';

  bad_command_message = "Command not recognized; please try again";

  command_line = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    prompt: main_prompt
  });

  recognized_commands = demo_commands;

  recognized_commands.prompt = function() {
    return command_line.prompt();
  };

  recognized_commands.exit = function() {
    return command_line.close();
  };

  recognized_commands.custom_basket = function() {
    throw "TODO: get this to pre-alpha";
  };

  input_handler = function(input) {
    console.log(recognized_commands);
    if (recognized_commands[input] != null) {
      return recognized_commands[input]();
    } else {
      return bad_command_message;
    }
  };

  command_line.prompt();

  command_line.on('line', input_handler);

  command_line.on('close', function() {
    return console.log("please hire me :D");
  });

  exports.input_handler = input_handler;

}).call(this);
