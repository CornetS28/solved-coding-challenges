# Write a function called that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

# Examples
# "()"              =>  true
# ")(()))"          =>  false
# "("               =>  false
# "(())((()())())"  =>  true
# Constraints
# 0 <= input.length <= 100

# Along with opening (() and closing ()) parenthesis, input may contain any valid ASCII characters. Furthermore, the input string may be empty and/or not contain any parentheses at all. Do not treat other forms of brackets as parentheses (e.g. [], {}, <>).

def valid_parentheses(string)
    valid = true
    string.gsub(/[^\(\)]/, '').split("").inject(0) do |counter, parentheses| 
      counter += (parentheses == "("? 1 : -1)
      valid = false if counter < 0
      counter 
    end.zero? && valid
end

def valid_parentheses(string)
  clean_string = string.gsub(/\((?>[^)(]+|\g<0>)*\)/, '')
  ( clean_string.include?('(') || clean_string.include?(')') ) ? false : true
end

def valid_parentheses(string)
  string.chars.inject(0) do |open, char|
    case
    when open < 0; break
    when char == '('; open += 1
    when char == ')'; open -= 1
    end
    open
  end == 0
end
puts valid_parentheses("()")
