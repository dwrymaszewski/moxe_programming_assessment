class Catalog
	constructor: (@items)->

	add_item: (item_to_add)->
		@items.push(item_to_add)

