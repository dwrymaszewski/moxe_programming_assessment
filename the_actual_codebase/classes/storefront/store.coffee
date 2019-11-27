class Store
	constructor: (@catalogs)->

	add_catalog: (catalog_to_add)->
		@catalogs.push(catalog_to_add)

	# remove_catalog: (catalog_to_remove)->
	# 	@catalogs = @catalogs.filter catalog-> catalog.name isnt catalog_to_remove.name


