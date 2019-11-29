Good = require('./good').Good

# this file name is kinda silly
class Coffee extends Good
	constructor: (name, price, unit_of_measure)->
		@coffee = true
		super name, price, unit_of_measure

exports.Coffee = Coffee