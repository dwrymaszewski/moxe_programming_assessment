class Good_Interface
	@insert: (good)->
		global.all_goods[good.name] = good

	@find: (good_name)->
		return global.all_goods[good_name]

exports.Good_Interface = Good_Interface