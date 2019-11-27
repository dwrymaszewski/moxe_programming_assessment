tax = requires('./tax').tax

class Inclusive_tax extends Tax

	set_inclusions: (@inclusions)->

	should_apply: (item)->
		apply_it = false
		for criterion in @inclusions
			if item[criterion] is true
				apply_it = true
				break
		return apply_it

exports.inclusive_tax = inclusive_tax