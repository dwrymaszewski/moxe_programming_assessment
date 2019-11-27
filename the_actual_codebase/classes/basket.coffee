class Basket
	items: []

	add: (item_to_add)->
		@items.push item_to_add

	remove: (item_to_remove)->
		@items = @items.filter item -> item.name isnt item_to_remove.name

	show_contents: ->
		for item in items
			console.log item.get_description()
	
	checkout: ->
		@apply_taxes()
		@print_receipt()

	apply_taxes: ->
		for item in @items
			item.apply_taxes()
	
	print_receipt: ->


exports.Basket = Basket