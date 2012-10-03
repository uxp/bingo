
module Bingo
	class Card

		attr_reader :values

		VALUES = [
			'$716 Billion',
			'Freedom of Religion',
			'Class Warfare',
			'Obamacare',
			'Work Requirement',
			'Pathway to Greece',
			'47%',
			'Obamaphone',
			'Voucher Program',
			'Bush Tax Cuts',
			'Bow to China',
			'The Euro Crisis',
			'Keystone Pipeline',
			'Teachers Unions',
			'Nuclear Iran',
			'Bailout',
			'"Out of Context"',
			'Bootstraps',
			'Entitlement',
			'The "Buffett Rule"',
			'Doubling Down',
			'Middle Class',
			'Solyndra',
			'US Manufacturing',
			'Quantitative Easing',
			'Outsourcing',
			'Fair Share',
			'Muslim',
			'Al Qaeda',
			'Cap and Trade',
			'Toxic Assets',
			'Bain Capital',
			'Apologize',
			'Change',
			'Sequester',
			'Washington Outsider',
			'Cayman Islands',
			'Let Detroit Go Bankrupt',
			'Trickle Down',
			'DEBT'
		]

		def initialize
			options = VALUES.dup
			@values = Array.new

			5.times do |column|
				@values[column] = Array.new
				5.times do |row|
					if row == 2 and column == 2
						@values[column][row] = 'Job Creators<br><span class="freespace">Free Space</span>'
					else
						@values[column][row] = options.sample
						options.delete @values[column][row]
					end
				end
			end
		end

	end
end

