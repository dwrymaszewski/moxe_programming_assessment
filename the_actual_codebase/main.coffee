# initialize_goods
# initialize_catalog
# initialize_taxes

command_line = readline.createInterface({
	input: process.stdin,
	output: process.stdout
})

handle_input = {}

command_line.question('''Howdy
Try typing the commands:
"demo_basket_1()"
"demo_basket_2()"
"demo_basket_3()"
or try your luck at "custom_basket()" (pre-pre-alpha)''',
handle_input())