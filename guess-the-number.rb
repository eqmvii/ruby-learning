# Guess the number

max_number =
    if ARGV[0].to_i > 0
        ARGV[0].to_i
    else
        10
    end

def guess_the_number(min, max, target_number)

    print "Guess a number between #{min} and #{max}: "

    guess = STDIN.gets.to_i

    if guess == target_number
        puts "You guessed the number correctly!"
    elsif guess < target_number
        puts "You guessed too low."
        guess_the_number(min, max, target_number)
    else
        puts "You guessed too high."
        guess_the_number(min, max, target_number)
    end
end

guess_the_number(1, max_number, rand(1..max_number))
