class Good
	constructor: (@name, @price, @unit_of_measure)->
		@ensure_a_currency()

	ensure_a_currency: ->
		if typeof @price is 'number'
			@price =
				amount: @price
				currency: @get_default_currency()
		# else unless Price.is_valid @price
		else if typeof @price isnt 'object'
			throw "good created with invalid price argument"

	get_default_currency: -> "USD"

exports.Good = Good