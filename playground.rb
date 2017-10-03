# Get My Number Game
#Written by James Blocker

puts "Welcome to 'Get My Number!'"

# Get players name and greet them
print "What's your name?"
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store random number for player to guess
puts "I've picked a number between 1-100"
puts "Can you guess it?"
target = rand(100) + 1

# Track how many guesses the player has made
num_guesses = 0

# Game status
guessed_it = false

until num_guesses == 10 || guessed_it

  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1

# Player guess evaluation
  if guess < target
    puts "Oops. Your guess was LOW"
  elsif guess > target
    puts "Nah, your guess was HIGH"
  elsif guess === target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses."
    guessed_it = true
  end

end



# player out of turns
unless guessed_it
  puts "Sorry. You ran out of turns. My number was #{target}"
end
