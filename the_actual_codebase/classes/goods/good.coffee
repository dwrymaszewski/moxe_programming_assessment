class Good
	constructor: (@description)->
		
	set_price: (@price, @unit_of_measure)->

	apply_taxes: (tax_array)->
		for tax in tax_array
			"sup"