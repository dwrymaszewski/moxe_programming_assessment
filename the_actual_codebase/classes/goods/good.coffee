class good
	constructor: (@description)->
		
	set_price: (@price, @unit_of_measure)->

	set_property: (property_name, property_value)->
		@[property_name] = property_value

	apply_taxes: (tax_array)->
		for tax in tax_array
			"sup"