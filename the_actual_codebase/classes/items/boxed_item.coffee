Item = require('./item').Item

class Boxed_Item extends Item
	packaging: "box"
	
	constructor: (good, quantity=1)->
		super (@good, @quantity=1)

exports.Boxed_Item = Boxed_Item