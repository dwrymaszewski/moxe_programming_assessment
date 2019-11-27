class Tax
	constructor: (@name, @rate)->

	should_apply: (item)-> true
	
	apply_to: (item)->
		tax_amount = item.price.amount * @rate
		item[@name] = 
			amount: @round_tax(tax_amount)
			currency: item.price.currency

	round_tax: (amount)->
		switch
			when false
				throw "how did you get past 'when false'?"
			else
				return @round_to_nickel(amount)

	round_to_nickel: (amount)->
		working_amount = Math.ceil amount * 20
		amount = working_amount / 20
		return amount

exports.Tax = Tax