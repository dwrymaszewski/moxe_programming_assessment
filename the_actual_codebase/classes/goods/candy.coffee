Good = require('./good').Good

class Candy extends Good
	constructor: (name, price, unit_of_measure)->
		@candy = true
		super name, price, unit_of_measure

exports.Candy = Candy