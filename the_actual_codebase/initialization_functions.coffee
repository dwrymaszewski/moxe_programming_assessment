Candy = require('./classes/goods/candy').Candy
Coffee = require('./classes/goods/coffee').Coffee
Good = require('./classes/goods/good').Good
Popcorn = require('./classes/goods/popcorn').Popcorn
Bagged_Item = require('./classes/items/bagged_item').Bagged_Item
Bottled_Item = require('./classes/items/bottled_item').Bottled_Item
Crated_Item = require('./classes/items/crated_item').Crated_Item
Item = require('./classes/items/item').Item
Good_Interface = require('./data_interfaces/good_interface').Good_Interface
Exclusive_Tax = require('./classes/taxes/exclusive_tax').Exclusive_Tax
Inclusive_Tax = require('./classes/taxes/inclusive_tax').Inclusive_Tax

initialize_goods = ->
	goods_bucket = 
		skittles: new Candy "Skittles", 1, "lb"
		walkman: new Good "Walkman", 99.99
		popcorn: new Popcorn "microwave Popcorn", .99
		vh_coffee: new Coffee "Vanilla-Hazelnut Coffee", 11
		vespa: new Good "Vespa", 15001.25
		a_snickers: new Candy "Almond Snickers", 75.99
		discman: new Good "Discman", 55
		wine: new Good "Wine", 10
		ft_coffee: new Coffee "Fair-Trade Coffee", 997.99/300, "lb"

	
	all_goods = {}
	for computer_name, good_object of goods_bucket
		all_goods[computer_name] = good_object

	global.all_goods = all_goods


initialize_items = ->
	item_bucket = 
		skittles_16: new Bagged_Item Good_Interface.find("skittles"), 16
		walkman: new Item Good_Interface.find("walkman")
		popcorn: new Bagged_Item Good_Interface.find("popcorn")
		coffee_vh: new Bagged_Item Good_Interface.find("vh_coffee")
		vespa: new Item Good_Interface.find("vespa")
		snickers_a: new Crated_Item Good_Interface.find("a_snickers")
		discman: new Item Good_Interface.find("discman")
		wine: new Bottled_Item Good_Interface.find("wine")
		coffee_300: new Bagged_Item Good_Interface.find("ft_coffee"), 300

	item_bucket.coffee_vh.flag_imported()
	item_bucket.vespa.flag_imported()
	item_bucket.snickers_a.flag_imported()
	item_bucket.wine.flag_imported()

	all_items = {}
	for computer_name, item_object of item_bucket
		all_items[computer_name] = item_object

	global.all_items = all_items


initialize_taxes = ->
	sales_tax = new Exclusive_Tax "Basic Sales Tax", .1
	sales_tax.set_exclusions ["candy", "popcorn", "coffee"]

	import_duty = new Inclusive_Tax "Import Duty", .05
	import_duty.set_inclusions ["imported"]

	global.all_taxes = {sales_tax, import_duty}

# initialize_catalog: ->
	

exports.initializations = {initialize_goods, initialize_items, initialize_taxes}