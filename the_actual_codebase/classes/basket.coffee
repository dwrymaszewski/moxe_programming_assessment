Tax_Interface = require('./../data_interfaces/tax_interface').Tax_Interface

class Basket
	items: []

	add: (item_to_add)->
		@items.push item_to_add

	# remove: (item_to_remove)->
	# 	@items = @items.filter item -> item.name isnt item_to_remove.name

	show_contents: ->
		for item in @items
			console.log item.get_description()
	
	checkout: ->
		@sub_total = 0
		@tax_total = 0
		@grand_total = 0
	
		for item in @items
			item.apply_taxes Tax_Interface.get_all()
			@sub_total += item.get_price().amount
			@tax_total += item.get_total_tax_price().amount

		@grand_total = @sub_total + @tax_total

	print_receipt: (header)->
		console.log header

		for item in @items
			console.log item.get_description_with_taxes()
		
		console.log @get_sales_tax_line()
		console.log @get_total_line()

	get_sales_tax_line: ->
		return "Sales Taxes: " + @tax_total

	get_total_line: ->
		return "Total: " + @grand_total

exports.Basket = Basket