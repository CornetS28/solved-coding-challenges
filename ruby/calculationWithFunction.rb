# This time we want to write calculations using functions and get the results. Let's have a look at some examples:

# seven(times(five)) # must return 35
# four(plus(nine)) # must return 13
# eight(minus(three)) # must return 5
# six(divided_by(two)) # must return 3
# Requirements:

# There must be a function for each number from 0 ("zero") to 9 ("nine")
# There must be a function for each of the following mathematical operations: plus, minus, times, dividedBy (divided_by in Ruby and Python)
# Each calculation consist of exactly one operation and two numbers
# The most outer function represents the left operand, the most inner function represents the right operand
# Divison should be integer division. For example, this should return 2, not 2.666666...:
# eight(divided_by(three))

class Object
  %w[zero one two three four five six seven eight nine].each_with_index do |name, n|
    define_method(name) do |args = nil|
      args ? n.send(*args) : n.to_f
    end
  end

  %w[plus + minus - times * divided_by /].each_slice(2) do |name, symbol|
    define_method(name) do |n|
      [symbol, n]
    end
  end
end
######### 2nd way
{ zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9 }
.each do |name, val|
  define_method(name) { |op = '+ 0'|
    eval("#{val} #{op}")
  }
end

{ plus: '+', minus: '-', times: '*', divided_by: '/' }
.each do |name, op|
  define_method(name) { |n|
    "#{op} #{n.to_f}"
  }
end

######### 3rd way
{
  :zero  => 0,
  :one   => 1,
  :two   => 2,
  :three => 3,
  :four  => 4,
  :five  => 5,
  :six   => 6,
  :seven => 7,
  :eight => 8,
  :nine  => 9
}.each do |meth, val|
  define_method("#{meth}") { |op = nil| op.nil? ? val : val.send(*op) }
end

{
  plus:       :+,
  minus:      :-,
  times:      :*,
  divided_by: :fdiv
}.each{ |meth, op| define_method(meth) {|other|  [op, other] } }
