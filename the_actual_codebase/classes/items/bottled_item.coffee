Item = require('./item').Item

class Bottled_Item extends Item
	packaging: "bottle"

	constructor: (good, quantity=1)->
		super (@good, @quantity=1)

exports.Bottled_Item = Bottled_Item