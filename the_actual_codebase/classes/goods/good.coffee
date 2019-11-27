class Good
	constructor: (@name, @price, @unit_of_measure)->
		ensure_a_currency()

	ensure_a_currency: ->
		if typeof @price is 'number'
			@price =
				amount: @price
				currency: @default_currency

	
	apply_taxes: (tax_array)->
		for tax in tax_array
			"sup"

	default_currency: "USD"

exports.Good = Good