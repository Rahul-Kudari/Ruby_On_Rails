arr1 = [1, 2, 2, 3]
arr2 = [ 2, 3]

puts arr1 & arr2  

puts arr1.select{|n| arr2.include?(n)}; #it allows the duplicates

puts arr1.intersection(arr2);  #it will not allow the duplicates

user_roles = ["admin", "editor", "viewer"]
required_roles = ["admin", "manager"]

if user_roles&required_roles
    puts "access granted"
else 
    puts "access denied"
end


