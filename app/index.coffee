require('lib/setup')

Spine = require('spine')

class App extends Spine.Controller
	constructor: ->
		super

		@regex = $('#regex')
		@testText = $('#testText')
		@matches = $('#matches')
	
		@regex.on 'change keyup', @_test
		@testText.on 'change keyup', @_test

	_test: =>
		console.log "matching #{@regex.val()} to #{@testText.val()}"
		match = @testText.val().match @regex.val()
		if match then @matches.html JSON.stringify match
		else @matches.html "no matches"
	


module.exports = App
	