assert = require 'assert'
Item = require (./item).Item

good_good =
	name: good_test_good
	price:
		amount: 100
		currency: "USD"
	


describe 'Item class', ->
	describe 'constructor', ->
		it 'should create an Item shaped object'