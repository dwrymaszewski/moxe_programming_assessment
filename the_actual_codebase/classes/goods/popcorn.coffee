Good = require('./good').Good

class Popcorn extends Good
	constructor: (name, price, unit_of_measure)->
		super name, price, unit_of_measure
		@popcorn = true

exports.Popcorn = Popcorn