require 'pry-byebug' # call binding.pry at any point in the program

def isogram?(string)
    original_length = string.length
    string_array = string.downcase.split

    binding.pry # calling pry-byebug

    unique_length = string_array.uniq.length
    original_length == unique_length
end

isogram?("Odin")

def yell_greeting(string)
  name = string

  binding.pry # calling pry-byebug

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")
