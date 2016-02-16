known_password = "password123"

# prompt user for the password
print "Please enter the password: "

# getting what the user entered
entered_password = gets

# removing the \n that is automatically placed at the end of entered_password
# when the user hits enter
entered_password.chop!

if entered_password == known_password
  puts "Welcome"
else
  puts "I don't know you."
end