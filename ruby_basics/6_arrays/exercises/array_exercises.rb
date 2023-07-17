=begin
Array.new               #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, 7)         #=> [7, 7, 7]
Array.new(3, true)      #=> [true, true, true]
=end

def nil_array(number)
  # return an array containing `nil` the given number of times
    Array.new(number)
end

def first_element(array)
  # return the first element of the array
  array[0]
end

def third_element(array)
  # return the third element of the array
  array[2]
end

=begin
str_array = ["This", "is", "a", "small", "array"]
str_array.first         #=> "This"
str_array.first(2)      #=> ["This", "is"]
str_array.last(2)       #=> ["small", "array"]
=end
def last_three_elements(array)
  # return the last 3 elements of the array
  array.last(3)
end

=begin
num_array = [1, 2]
num_array.push(3, 4)      #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3, 4]
=end
def add_element(array)
  # add an element (of any value) to the array
  array.push(6)
end

def remove_last_element(array)
  # Step 1: remove the last element from the array
  array.pop
  # Step 2: return the array (because Step 1 returns the value of the element removed)
  array

end

=begin
#  The #unshift method adds elements to the beginning of an array and returns that array (much like #push). The #shift method removes the first element of an array and returns that element (much like #pop).
num_array = [2, 3, 4]
num_array.unshift(1)      #=> [1, 2, 3, 4]
num_array.shift           #=> 1
num_array                 #=> [2, 3, 4]

# It’s also useful to know that both #pop and #shift can take integer arguments
num_array = [1, 2, 3, 4, 5, 6]

num_array.pop(3)          #=> [4, 5, 6]
num_array.shift(2)        #=> [1, 2]
num_array                 #=> [3]
=end
def remove_first_three_elements(array)
  # Step 1: remove the first three elements
  array.shift(3)
  # Step 2: return the array (because Step 1 returns the values of the elements removed)
  array

end

=begin
a = [1, 2, 3]
b = [3, 4, 5]
a + b         #=> [1, 2, 3, 3, 4, 5]
a.concat(b)   #=> [1, 2, 3, 3, 4, 5]

# To find the difference between two arrays, you can subtract them using -. This method returns a copy of the first array, removing any elements that appear in the second array.
[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]
=end
def array_concatenation(original, additional)
  # return an array adding the original and additional array together
  original.concat(additional)

end

def array_difference(original, comparison)
  # return an array of elements from the original array that are not in the comparison array
  original - comparison

end

def empty_array?(array)
  # return true if the array is empty
  array.empty?
end

# reverse: Returns all elements in reverse order.
def reverse(array)
  # return the reverse of the array
  array.reverse
end

def array_length(array)
  # return the length of the array
  array.length
end

def include?(array, value)
  # return true if the array includes the value
  array.include?(value)
end

def join(array, separator)
  # return the result of joining the array with the separator
  array.join(separator)
end
