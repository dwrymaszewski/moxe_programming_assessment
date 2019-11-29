# Price = require('./../price').Price

class Good
	constructor: (@name, @price, @unit_of_measure)->
		@ensure_a_currency()

	ensure_a_currency: ->
		bad_price_message = "good created with invalid price argument"
		if typeof @price is 'number'
			@price =
				amount: @price
				currency: @get_default_currency()
		# else if Price.is_valid @price
			# return
		else
			throw bad_price_message

	get_default_currency: -> "USD"

exports.Good = Good