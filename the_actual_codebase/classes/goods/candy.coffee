Good = require('./good').Good

class Candy extends Good
	constructor: (name, price, unit_of_measure)->
		super name, price, unit_of_measure
		@candy = true

exports.Candy = Candy