# initialize_goods
# initialize_catalog
# initialize_taxes

readline = require 'readline'
import 'demo_baskets'
console.log demo_commands
main_prompt = '''Howdy
Try typing the commands:
"demo_basket_1"
"demo_basket_2"
"demo_basket_3"
or try your luck at "custom_basket()" (pre-pre-alpha)

'''

input_handler = (input) =>
	if input_commands[input]?
		input_commands[input]()
		command_line.close()
	else
		console.log "Command not recognized; please try again"

command_line = readline.createInterface({
	input: process.stdin,
	output: process.stdout
	prompt: main_prompt
})

command_line.prompt()
command_line.on 'line', input_handler
command_line.on 'close', -> console.log "PEACE OUT"
