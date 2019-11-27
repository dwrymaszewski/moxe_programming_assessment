Basket = require('./classes/basket').Basket
Item_Interface = new require('./data_interfaces/item_interface').Item_Interface

demo_basket_1 = ->
	basket = new Basket()
	basket.add Item_Interface.find "skittles_16"
	basket.add Item_Interface.find "walkman"
	basket.add Item_Interface.find "popcorn"
	basket.checkout()
	basket.print_receipt("Output 1:")
	console.log "demo_basket_1 didn't explode!"

demo_basket_2 = ->
	basket = new Basket()
	basket.add Item_Interface.find "coffee_vh"
	basket.add Item_Interface.find "vespa"
	basket.checkout()
	basket.print_receipt("Output 2:")


demo_basket_3 = ->
	basket = new Basket()
	basket.add Item_Interface.find "snickers_a"
	basket.add Item_Interface.find "discman"
	basket.add Item_Interface.find "wine"
	basket.add Item_Interface.find "coffee_300"
	basket.checkout()
	basket.print_receipt("Output 3:")


exports.demo_commands = {demo_basket_1, demo_basket_2, demo_basket_3}