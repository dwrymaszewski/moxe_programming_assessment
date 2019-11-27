class Tax_Interface
	@insert: (tax)->
		global.all_taxes[tax.name] = tax

	@find: (tax_name)->
		return global.all_taxes[tax_name]

	@get_all: ->
		return global.all_taxes

exports.Tax_Interface = Tax_Interface
