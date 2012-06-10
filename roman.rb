require_relative 'numero'

class Roman
	attr_reader :value 
	@@roman_hash = {'I'=>1,'V'=>5,'X'=>10, 'L'=>50, 'C'=>100, 'D'=>500, 'M'=>1000}

	def initialize(value)
		@value = value
	end

	def to_int()

		total_number = 0
		pre_number = @value[-1].chr

		@value.reverse.each_char do |number|
			if @@roman_hash[pre_number] <= @@roman_hash[number]
				total_number += @@roman_hash[number]
			else
				total_number -= @@roman_hash[number]
			end
			pre_number = number	
		end

		return total_number
	end

	def sum(roman)
		return Numero.new(self.to_int + roman.to_int).to_roman
	end
end

ARGF.each do |line|
	line.chomp!
	if line.to_i == 0
		puts Roman.new(line).to_int()
	else
	  puts Numero.new(line.to_i).to_roman()
	end
end