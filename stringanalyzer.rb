def multi(first, second)
  first.to_f * second.to_f
end

def div(first, second)
  first.to_f / second.to_f
end

def sub(first, second)
  first.to_i - second.to_i
end

def add(first, second)
  first.to_i + second.to_i
end

def mod(first, second)
  first.to_i % second.to_i
end

puts "What do you want to do? 1)Multiply 2) Divide 3) Subtract 4) Add 5) Find Remainder"
prompt = gets.chomp.to_i

puts "Enter your first number"
firstnumber = gets.chomp
puts "Enter a second number"
secondnumber = gets.chomp


if (prompt == 1)
  puts "You have chosen to multiply"
  result = multi(firstnumber, secondnumber)
elsif (prompt ==2)
  puts "You have chosen to divide"
  result = div(firstnumber, secondnumber)
elsif (prompt == 3)
  puts "You have chosen to subtract"
  result = sub(firstnumber, secondnumber)
elsif(prompt == 4)
  puts "You have chosen to add"
  result = add(firstnumber, secondnumber)
elsif(prompt == 5)
  puts "you have chosen to find the remainder"
  result = mod(firstnumber, secondnumber)
else
  puts "You have made an invalid choice"
end

puts "The result is #{result}"

