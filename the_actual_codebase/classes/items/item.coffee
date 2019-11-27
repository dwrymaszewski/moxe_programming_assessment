class Item
	constructor: (@good, @quantity=1)->
		if @good?
			@set_price()
		else
			throw "A Good is required to create an Item"
		
	get_description: ->
		@description ?= @good.name + " at " + @price
		return @description

	set_price: ->
		@price = @quantity * @good.price?.amount
	
	flag_imported: ->
		@imported=true

exports.Item = Item