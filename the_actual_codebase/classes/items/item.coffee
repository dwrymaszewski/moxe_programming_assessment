class Item

	constructor: (@good, @quantity=1)->
		@taxes_applied = {}
		if @good?.price?
			@set_price()
		else
			throw "A priced Good is required to create an Item"
		
	get_description: ->
		@description ?= @good.name + " at " + @get_price().amount
		return @description

	get_description_with_taxes: ->
		@description_with_taxes ?= @good.name + ": " + @get_price_amount_with_taxes()
		return @description_with_taxes

	set_price: ->
		@price = 
			amount: @quantity * @good.price.amount
			currency: @good.price.currency
	
	get_price: ->
		@price

	get_price_amount_with_taxes: ->
		console.log @get_price().amount
		console.log @get_total_tax_price().amount

		@get_price().amount + @get_total_tax_price().amount

	get_total_tax_price: ->
		@total_tax_price = 
			amount: 0
			currency: @get_price().currency

		for tax_price in Object.values @taxes_applied
			@total_tax_price.amount += tax_price.amount

		return @total_tax_price
	
	flag_imported: ->
		@imported = true

	apply_taxes: (taxes)->
		for tax in taxes
			if tax.should_apply @
				@apply_tax tax
				# tax_price = tax.get_tax_price @price

	apply_tax: (tax)->
		console.log "what be tax", tax
		console.log "what taxes be applied", @taxes_applied

		if @taxes_applied[tax.name]?
			throw "The tax #{tax.name} has already been applied to this item"
		else
			tax_price = tax.get_tax_price @price
			@taxes_applied[tax.name] = tax_price

	remove_tax: (tax)->
		delete @taxes_applied[tax.name]

exports.Item = Item