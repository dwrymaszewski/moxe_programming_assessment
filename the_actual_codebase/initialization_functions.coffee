initialize_goods: ->
	skittles = new Candy "Skittles", 1, "lb"

	walkman = new Good "Walkman", 99.99

	popcorn = new Popcorn "microwave Popcorn", .99

	vh_coffee = new Coffee "Vanilla-Hazelnut Coffee", 11

	vespa = new Good "Vespa", 15001.25

	a_snickers = new Candy "Almond Snickers", 75.99

	discman = new Good "Discman", 55

	wine = new Good "Wine", 10

	ft_coffee = new Coffee "Fair-Trade Coffee", 997.99/300, "lb"

	global.all_goods = {skittles, walkman, popcorn, vh_coffee, vespa, a_snickers, discman, wine, ft_coffee}

initialize_taxes: ->
	sales_tax = new exclusive_tax "Basic Sales Tax", .1
	sales_tax.set_exclusions ["candy", "popcorn", "coffee"]

	import_duty = new inclusive_tax "Import Duty", .05
	import_duty.set_inclusions ["imported"]

	global.all_taxes = {sales_tax, import_duty}

initialize_catalog: ->
	