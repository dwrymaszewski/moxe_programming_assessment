class good

	constructor: (@description)->
		@price

	apply_taxes: (tax_array)->
		for tax in tax_array