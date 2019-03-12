module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    # TODO: use the integers in nums_a to validate its last check digit
    nums_a = number.to_s.chars.map(&:to_i)
	
	sum = 0
	nums_a.reverse.each_with_index do |num, index|
		num *= 2 if index % 2 == 1
		num -= 9 if num > 9
		sum += num
	end
	(sum % 10) == 0
  end
end
