Tax = require('./tax').Tax

class Exclusive_Tax extends Tax

	set_exclusions: (@exclusions)->
		
	should_apply: (item)->
		apply_it = true
		for criterion in @exclusions
			if item.good[criterion] is true
				apply_it = false
				break
		return apply_it

exports.Exclusive_Tax = Exclusive_Tax