# def spinWords(string)
#   string.split.each { |e| e.reverse! if e.length >= 5 }.join(' ')
# end

def spinWords(string) #Best solution
  string.gsub(/\w{5,}/, &:reverse)
end

 puts spinWords("I man without a goal is an animal")