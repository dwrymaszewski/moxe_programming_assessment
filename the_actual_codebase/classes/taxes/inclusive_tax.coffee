Tax = require('./tax').Tax

class Inclusive_Tax extends Tax

	set_inclusions: (@inclusions)->

	should_apply: (item)->
		apply_it = false
		for criterion in @inclusions
			if item[criterion] is true
				apply_it = true
				break
		return apply_it

exports.Inclusive_Tax = Inclusive_Tax