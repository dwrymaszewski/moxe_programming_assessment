Tax_Interface = require('./../../data_interfaces/tax_interface').Tax_Interface

class Item
	taxes_applied: {}

	constructor: (@good, @quantity=1)->
		if @good?.price?
			@set_price()
		else
			throw "A priced Good is required to create an Item"
		
	get_description: ->
		@description ?= @good.name + " at " + @get_price().amount
		return @description

	get_description_with_taxes: ->
		@description_with_taxes ?= @good.name + ": " + @get_price_with_taxes().amount
		return @description_with_taxes

	set_price: ->
		@price = 
			amount: @quantity * @good.price.amount
			currency: @good.price.currency
	
	get_price: ->
		@price

	get_price_with_taxes: ->
		total_taxed_amount = @get_total_tax_price().amount
		return @get_price().amount + total_taxed_amount

	get_total_tax_price: ->
		for 
	
	flag_imported: ->
		@imported = true

	apply_taxes: (taxes)->
		for tax_type in taxes
			if tax.should_apply @
				apply_tax tax
				# tax_price = tax.get_tax_price @price

	apply_tax: (tax)->
		if @taxes_applied[tax.name]?
			throw "The tax #{tax.name} has already been applied to this item"
		else
			tax_price = tax.get_tax_price @price
			@taxes_applied[tax.name] = tax_price

exports.Item = Item