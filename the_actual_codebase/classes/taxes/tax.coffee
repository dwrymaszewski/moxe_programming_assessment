class Tax
	constructor: (@name, @rate)->

	should_apply: (item)-> true
	
	get_tax_price: (price)->
		taxable_amount = price.amount * @rate
		console.log "taxable_amount", taxable_amount
		tax_price =
			amount: @round_tax(taxable_amount)
			currency: price.currency

		console.log "tax_price", tax_price
		return tax_price

	round_tax: (amount)->
		switch
			when false
				throw "how did you get past 'when false'?"
			else
				return @round_to_nickel(amount)

	round_to_nickel: (amount)->
		working_amount = Math.ceil(amount * 20)
		amount = working_amount / 20
		return amount

exports.Tax = Tax