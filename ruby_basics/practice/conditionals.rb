puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end



while gets.chomp != "yes" do
  puts "Will you go to store with me?"
end
# This is more readable because you are not negating
until gets.chomp == "yes" do
  puts "Will you go to prom with me?"
end