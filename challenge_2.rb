require './challenge_1.rb'
# Line 1 effectively copy-pastes in any code you wrote in challenge_1.rb
# It's similar to connecting an external stylesheet to an HTML file.

# ===========
# CHALLENGE 2
# ===========

# Below is an array of hashes. Each hash in the array represents one rate quote from a bank.

loan_quotes = [
  { "bank" => "Elm Street Bank", "interest_rate" => 0.013},
  { "bank" => "Oak Street Bank", "interest_rate" => 0.009},
  { "bank" => "Ash Street Bank", "interest_rate" => 0.011}
]

# Let's ask our user for the parameters of the loan:



# Now, loop through the array of loan quotes using .each:
#   For each option, tell the user how much the monthly payment will be to that bank.
#   Re-use the pmt method that you defined in Challenge 1.

# ====================
# def pmt(interest_rate, payments, principal)
#   numerator =interest_rate*principal*(1 + interest_rate)**payments
#   denominator= (1+ interest_rate)**payments - 1
#   return numerator/denominator.to_f
# end

puts "Enter the number of payments:"
    payments = gets.chomp.to_i
puts "Enter the loan amount:"
  principal = gets.chomp.to_f

loan_quotes.each do |x|
  interest_rate = x["interest_rate"]
  puts "For #{x["bank"]} your payment is #{pmt(interest_rate, payments, principal)} "
end
# ====================
