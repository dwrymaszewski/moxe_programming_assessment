Item = require('./item').Item

class Crated_Item extends Item
	packaging: "crate"

	constructor: (good, quantity=1)->
		super (@good, @quantity=1)

exports.Crated_Item = Crated_Item