# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

# =========================================

def pmt(interest_rate,payments,principal)
  numerator =interest_rate*principal*(1 + interest_rate)**payments
  denominator= (1+ interest_rate)**payments - 1
  return numerator/denominator.to_f
end

puts pmt(0.01,60,30000)
# =========================================


