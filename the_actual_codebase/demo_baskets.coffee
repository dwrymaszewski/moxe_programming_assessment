Basket = require('./classes/basket').Basket

demo_basket_1 = ->
	basket = new Basket()
	basket.add skittles_16
	basket.add walkman
	basket.add popcorn
	basket.checkout()

demo_basket_2 = ->
	basket = new Basket()
	basket.add coffee_vh
	basket.add vespa
	basket.checkout()

demo_basket_3 = ->
	basket = new Basket()
	basket.add snickers_a
	basket.add discman
	basket.add wine
	basket.add coffee_300
	basket.checkout()

exports.demo_commands = {demo_basket_1, demo_basket_2, demo_basket_3}