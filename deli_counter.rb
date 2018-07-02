# Write your code here.

katz_deli = []

def line(katz_deli)
  ordered_line = []
  if katz_deli.length === 0 
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |name, index|
      number_in_ordered_line = "#{index + 1}. #{name}"
      ordered_line << number_in_ordered_line
    end
    puts "The line is currently: #{ordered_line.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  
  if katz_deli.any? === true
    katz_deli << name
  else
    katz_deli.unshift(name)
  end
  
  katz_deli.each_with_index do |name, index|
    puts "Welcome, #{name}. You are number #{index + 1} in line."
  end
  
end

def now_serving(katz_deli)
  if katz_deli.length === 0 
   puts "There is nobody waiting to be served!"
  else
    served = katz_deli.shift
    puts "Currently serving #{served}."
  end
end