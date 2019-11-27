class Item_Interface
	@insert: (item)->
		global.all_items[item.name] = item

	@find: (item_name)->
		return global.all_items[item_name]

exports.Item_Interface = Item_Interface

# the insert is pretty bunk, but i don't want to waste more time on mocking a database