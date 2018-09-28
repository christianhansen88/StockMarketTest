system('reset')      # clears the whole console
#system('clear')      # only scrolls down the console

first_name = "Christian"  # Variable
age = 30                  # int variable

names = [first_name,"Nadya","RandomName"]
puts names[0]                  # puts first item in array
puts names[names.length - 1]   # puts last item in array

arraytest = [["one","two","three"], "hi", "yes", "no"]
puts arraytest[0][0]           # puts first item of array within the first item of another array

puts "Hello #{ first_name.capitalize }!"   # Writes string with a newline afterwards
print "...Print #{ age } Yes"  # Writes string without a newline afterwards
puts "No"

puts "christian hansen".capitalize  # capitalizes first letter in the string
puts "christian hansen".upcase      # caps everything in string
puts "Christian Hansen".downcase    # lower case everything in string

print "Enter a number between 1 and 10: " # prints string to console
num = gets.to_i                     # Wait for user input. Save it to an int variable

# gets.to_s  - save to a string
# gets.to_f  - save to a float


if num < 1 or num > 10
  puts "You didn't type a number between 1 and 10!"
elsif num > 5
  puts "#{ num } is greater than 5"
elsif num == 5
  puts "#{ num } is equal to 5"
elsif num < 5
  puts "#{ num } is lower than 5"
end

num.to_s   # converts int to string

puts "john" == "John" # returns false

print "Enter your name: "
name = gets.chomp    # chomp removed the newline after the string

if name == "Christian"
  puts "Hello Christian!"
elsif name == "Nadya"
  puts "Hello Nadya!"
else
  puts "I don't know you!"
end

# Math:  plus: +   minus: -    times: *    divided: /    exponential: **    modulus: %
# if you do math with integers, you get an integer answer. It rounds up and down.
# if you want to do math AND assign the result to a variable, you put a = behind the math operators


=begin
Another way to comment out things.

Comparison operators
==    equal to
!=    not equal to
>     greater than
<     less than
>=    greater than or equal to
<=    less than or equal to

&&    and
||    or

=end


#while loop
num = 1
while num <= 10
  puts num
  num += 1
end


# each loop
(65..74).each do |numvar|
  puts numvar             # loop through the range, save each number to numvar and write them out to screen
end


# hash table
favorite_color = {
  "Christian" => "Blue",
  "Nadya" => "Green",
  "RandomName" => "Yellow"  
  }

puts favorite_color["Nadya"]



# Fizz buzz test
num = 1
while num <= 100
  print "#{num}."
  if num % 3 == 0 && num % 5 == 0
    puts "FIZZBUZZ!"
  elsif num % 3 == 0
    puts "FIZZ!"
  elsif num % 5 == 0
    puts "BUZZ!"
  else
    puts "\n"  # newline
  end
  num += 1
end


# PowerShell functions are called methods
def hello(first_name, last_name)
  return "Hello There #{ first_name } #{ last_name }!"
end

returned_msg = hello("Christian","Hansen")   # runs the method and saves the returned message
puts returned_msg





# Classes
class Square
  attr_accessor :side_length, :area  # adds a "getter" and "setter" for side_length and area
  
  def initialize(side_length, area)
    @side_length = side_length
    @area = area
  end
  
  def perimeter
    return @side_length * 4
  end
  
  def to_s
    return "Side length: #{ @side_length }\nPerimeter: #{perimeter}\nArea: #{area}"
  end
  
  def draw
    puts "*" * @side_length
    (@side_length - 2).times do
      print "*" + (" " * (@side_length - 2)) + "*\n"
    end
    puts "*" * @side_length
  end
  
end

my_square = Square.new(10,100)

puts my_square.inspect  # inspect our class object
puts my_square.perimeter  # showing the 
puts my_square

my_square.draw







