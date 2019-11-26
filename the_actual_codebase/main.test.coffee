assert = require 'assert'
input_handler = require('./main').input_handler

# test_message = "ran known command"

# recognized_commands = {
# 	test_1: -> test_message
# 	}
# bad_command_message = "ran mystery command"

describe 'input_handler', ->
	it 'should handle null', ->
		input_handler null
	it.skip 'should run test_1() when fed "test_1"', ->
		assert.strictEqual input_handler("test_1"), test_message
	it.skip 'should return an error message when fed a command it does not recognize', ->
		assert.strictEqual input_handler("test_Z"), bad_command_message