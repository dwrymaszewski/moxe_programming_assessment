initialize_goods: ->
	skittles = new candy "Skittles"
	skittles_properties =
		unit: "lb"
		packaging: "bag"
		price_per_unit: 1

	walkman = new good "Walkman"
	walkman_properties = 
		price_per_unit: 99.99

	popcorn = new popcorn "microwave Popcorn"
	popcorn_properties =
		packaging: "bag"
		price_per_unit: .99
		preperation_method: "microwave"

	vh_coffee = new coffee "Vanilla-Hazelnut Coffee"
	vh_coffee_properties =
		packaging: "bag"
		price_per_unit: 11
		flavor: "vanilla-hazlenut"
		imported: true

	vespa = new good "Vespa"
	vespa_properties =
		price_per_unit: 15001.25
		imported: true

	a_snickers = new candy "Almond Snickers"
	a_snickers_properties =
		packaging: "crate"
		price_per_unit: 75.99
		flavor: "almond"

	discman = new good "Discman"
	discman_properties =
		price_per_unit: 55
	
	wine = new good "Wine"
	wine_properties = {}

initialize_taxes: ->
	sales_tax = new tax_with_exceptions .1, ["candy", "popcorn", "coffee"]
	import_duty = new tax_with_applications .05, ["imported"]

initialize_catalog: ->
	