i = 0
sum = []
number = 0

until i >= 3
  print "Please enter a number\n"
  number = gets
  number.chop!
  number = number.to_i
  sum.push(number)
  i += 1
end
puts "You entered #{sum[0]}, #{sum[1]}, and #{sum[2]} for a total of #{sum.inject{ |result, element| result += element}}."