Item = require('./item').Item

class Bagged_Item extends Item
	packaging: "bag"

	# constructor: (good, quantity=1)->
	# 	super(good, quantity)

exports.Bagged_Item = Bagged_Item