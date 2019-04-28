users = [
  { 'username': 'ife', password: 'password' },
  { 'username': 'ife1', password: 'password1' },
  { 'username': 'ife2', password: 'password2' },
  { 'username': 'ife3', password: 'password3' },
  { 'username': 'ife4', password: 'password4' },
  { 'username': 'ife5', password: 'password5' },
]

puts "Welcome to the authenticator"

25.times { print "-" }

puts

puts "This program will take input from the user and compare password"
puts "If the password is correct, you will get back the user object"

attempts = 1

while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  users.each do |user|
    if user[:username] == username && user[:password] == password
      puts user
    else
      puts "Credentials were not correct"
    end
  end
  puts "Press n to quit or any other key to continue:"
  input = gets.chomp.downcase

  break if input == "n"

  attempts += 1
end