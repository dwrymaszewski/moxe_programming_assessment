class Exclusive_tax extends Tax

	set_exclusions: (@exclusions)->
		
	should_apply: (item)->
		apply_it = true
		for criterion in @exclusions
			if item[criterion] is true
				apply_it = false
				break
		return apply_it

exports.exclusive_tax = exclusive_tax