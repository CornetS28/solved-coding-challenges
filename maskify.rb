# frozen_string_literal: true

# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

def maskify(cc) #1rst way
  cc.size <= 4 ? cc : "#" * (cc.size - 4) + cc[-4..-1]
end

def maskify(cc) #2nd way
  cc.split.each.map { |digit| cc.size <= 4 ? digit : "#" * (cc.size - 4) + cc[-4..-1]}.join
end

def maskify(cc) #3rd way
  cc.chars.each_with_index.map{ |digit, i|  i < cc.length - 4 ? "#" : digit }.join
 
end
puts maskify('111122223333')



















 #  cc.size <=4 ? cc : "#" * (cc.size-4) + cc[-4..-1]
  # cc.split.each.map { |d| d.length <= 4 ? d : '#' * (cc.size - 4) + cc[-4..-1] }
  # cc.chars.each_with_index.map{|x,i| i < cc.length - 4 ? '#' : x}.join