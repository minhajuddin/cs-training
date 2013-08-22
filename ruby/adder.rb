puts("Enter a number:")
op1 = gets()
puts("Enter another number:")
op2 = gets()

result = op1.chomp().to_i() + op2.chomp.to_i()
puts("The sum is " + result.to_s())
