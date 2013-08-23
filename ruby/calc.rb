#It needs to be able to add/subtract/multiply/divide
def get_operands()
  puts("Enter the operands:")
  op1 = gets()
  op2 = gets()
  op1 = op1.chomp.to_i
  op2 = op2.chomp.to_i
  return [op1, op2]
end

def get_operation()
end

operands = get_operands()
result = operands[0] + operands[1]
#puts("Addition of " + op1.to_s + " and " + op2.to_s + " is " + result.to_s)
puts("Addition of #{operands[0]} and #{operands[1]} is #{result}")
