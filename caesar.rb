# Create an array with all letters on the alphabet

alphabet = {"downcase" => ('a'..'z').to_a, "upcase" => ('A'..'Z').to_a}

# Get user input for string and key

puts "What is the word?" 
word = gets

puts "What is the key?"
key = gets.to_i

# Method that shifts the letters to desirable one.

shifted_word = []

word.each_char {|c|
    if alphabet["downcase"].include?(c)
      i = alphabet["downcase"].index(c) + key
        if i > 26
          i = i - 26
        end
      shifted_word.push(alphabet["downcase"][i])

    elsif alphabet["upcase"].include?(c)
      i = alphabet["upcase"].index(c) + key
        if i > 26
          i = i - 26
        end
      shifted_word.push(alphabet["downcase"][i])

    else
      shifted_word.push(c)

    end
    
  }

puts "Your cipher is:"
puts shifted_word.join()

