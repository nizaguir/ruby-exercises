def create_favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  favorite = {color: color, number: number}
end

def favorite_color(favorite_list)
  # return the value of the color key
  favorite_list[:color]
end

=begin
Hashes have a fetch method that will raise an error when you try to access a key that is not in your hash.

Alternatively, this method can return a default value instead of raising an error if the given key is not found.
Example: shoes.fetch("hiking", "hiking boots") #=> "hiking boots" (the default if can't be found will be "hiking boots")
=end 
def favorite_number(favorite_list)
  # use #fetch to return the value of the number key or 42 if the key is not found
  favorite_list.fetch(:number, 42)
end
=begin 
You can add a key-value pair to a hash by calling the key and setting the value, just like you would with any other variable.
Example: 
shoes["fall"] = "sneakers"
shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

You can also use this approach to change the value of an existing key.
shoes["summer"] = "flip-flops"
shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}
=end
def update_favorite_movie(favorite_list, movie)
  # Step 1: add/update the key of movie (as a symbol)
  favorite_list[:movie] = movie
  # Step 2: return the hash (because Step 1 returns the value of the movie key)
  favorite_list
end

=begin 
Deleting data from a hash is simple with the hash’s #delete method
shoes.delete("summer")    #=> "flip-flops"
shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}
=end
def remove_favorite_number(favorite_list)
  # Step 1: delete the number data
  favorite_list.delete(:number)
  # Step 2: return the hash (because Step 1 returns the value of the number key)
  favorite_list
end
=begin 
The #keys and #values methods, which very unsurprisingly return the keys and values of a hash, respectively. Note that both of these methods return arrays.

books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]
=end
def favorite_categories(favorite_list)
  # return the keys of favorite_list
  favorite_list.keys
end

def favorite_items(favorite_list)
  # return the values of favorite_list
  favorite_list.values
end
=begin 
The Merge method:
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }
---------------------------
The values from the hash getting merged in (in this case, the values in hash2) overwrite the values of the hash getting… uh, merged at (hash1 here) when the two hashes have a key that’s the same.
=end
def merge_favorites(original_list, additional_list)
  # merge the two hashes: original_list and additional_list
  original_list.merge(additional_list)
end
