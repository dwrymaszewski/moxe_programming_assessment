Tax_Interface = require('./../../data_interfaces/tax_interface').Tax_Interface

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
	
	get_price: ->
		@price
	
	flag_imported: ->
		@imported = true

	apply_taxes: ->
		for tax in Tax_Interface.get_all()
			if tax.should_apply @
				tax.apply_to @

exports.Item = Item