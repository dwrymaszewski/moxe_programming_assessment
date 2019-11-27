class Catalog_Interface
	@insert: (catalog)->
		global[catalog.name] = catalog

	@find: (catalog_name)->
		return global[catalog_name]

exports.Catalog_Interface = Catalog_Interface