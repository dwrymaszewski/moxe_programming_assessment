class basket
	items: []

	add: (item_to_add)->
		@items.push item_to_add

	remove: (item_to_remove)->
		@items = @items.filter item-> item.name isnt item_to_remove.name

	checkout: ->
		for item in @items
			item.apply_taxes()
		
		@create_receipt()

	create_receipt: ->
		

		
exports.basket = basket