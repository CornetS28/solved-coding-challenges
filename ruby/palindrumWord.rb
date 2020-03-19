# frozen_string_literal: true

# def checkForPalindrumWord(word)
#   reversedWord = word.reverse
#   if reversedWord == word
#     puts "Word #{word}"
#     puts "Reversed Word: #{reversedWord}"
#   else
#     puts 'This is not a palindrome word!'
#   end
# end


# checkForPalindrumWord('madam')
def palindrome?(word)
  
  if word.length == 1 || word.length == 0
  else
    if word[0] == word[-1]
       palindrome?(word[1..-2])
      word
    else
      puts "not a palidrome"
    end
  end
 
end


puts palindrome?('arra')
