
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
			'US Manufacturing',
			'Quantitative Easing',
			'Outsourcing',
			'Fair Share',
			'Muslim',
			'Al Qaeda',
			'Cap and Trade',
			'Toxic Assets',
			'Bain Capital'
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

