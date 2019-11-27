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
		for item in @items
			item.apply_taxes(all_taxes)

		@print_receipt()

	print_receipt: ->
		total_taxes = 0
		for item in @items
			total_taxes += item.total_taxes



exports.Basket = Basket