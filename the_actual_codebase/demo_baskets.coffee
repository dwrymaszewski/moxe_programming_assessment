demo_basket_1: ->
	basket = new basket
	basket.add skittles_16
	basket.add walkman
	basket.add popcorn

	basket.checkout

demo_basket_2: ->
	basket.add coffee_vh
	basket.add vespa

	basket.checkout

demo_basket_3: ->
	basket.add snickers_a
	basket.add discman
	basket.add wine
	basket.add coffee_300

	basket.checkout