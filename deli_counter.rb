require 'pry'

katz_deli = []

def line arr
  if arr == [] 
    puts "The line is currently empty."
  else 
   deli_line = arr.map.with_index{|name, i| ["#{i + 1}. #{name}"]}
   puts "The line is currently: #{deli_line.flatten.join(" ")}"
  end
end

def take_a_number arr, name 
  arr << name
  i = arr.find_index(name)
  puts "Welcome, #{name}. You are number #{i + 1} in line."
end
 
def now_serving arr
  if arr == []
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{arr[0]}."
    arr.shift
  end
end
binding.pry
0