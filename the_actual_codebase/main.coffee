# initialize_goods
# initialize_catalog
# initialize_taxes

readline = require 'readline'
demo_commands = require('./demo_baskets').demo_commands

main_prompt = '''Howdy!
	Try typing the commands:
	"demo_basket_1"
	"demo_basket_2"
	"demo_basket_3"
	or try your luck at "custom_basket" (pre-pre-alpha)

	Type "exit" to quit.

	'''
bad_command_message = "Command not recognized; please try again"

command_line = readline.createInterface({
	input: process.stdin,
	output: process.stdout
	prompt: main_prompt
})

recognized_commands = demo_commands
recognized_commands.prompt = -> command_line.prompt()
recognized_commands.exit = -> command_line.close()
recognized_commands.custom_basket = -> throw "TODO: get this to pre-alpha"

input_handler = (input)->
	console.log recognized_commands

	if recognized_commands[input]?
		return recognized_commands[input]()
	else
		return bad_command_message

command_line.prompt()
command_line.on 'line', input_handler
command_line.on 'close', -> console.log "please hire me :D"

exports.input_handler = input_handler