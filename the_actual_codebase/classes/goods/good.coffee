class Good
	constructor: (@name, @price, @unit_of_measure)->
		ensure_a_currency()

	ensure_a_currency = ->
		if typeof @price is 'number'
			@price =
				amount: @price
				currency: default_currency

	default_currency = "USD"

exports.Good = Good