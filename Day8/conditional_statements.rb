# conditional statements

#if condition statement
name="rahul"

if name=="rahul"
    puts "the name is true"
end


#if else condition 
age=10
if age>18
    puts "he can vote"
else
    puts "he can't vote"
end



# else if 

stock=0
if stock==0
    puts "the stock is not availabel"
    stock=200;
elsif stock>10
    puts "u can purchase above 10 products"
   
elsif stock <10
     puts "the product not prasent"

end

puts stock


#ternary operator using if else condition
puts stock>15?  "this is above 15":  "this is not above";



#case statments

no=10
case no
when 1..10
    puts "he is a child"
when 10..20
    puts "he is the teen"
when 20..40
    puts "he is the adult"
else
    puts "old citizen"
end


price=100
unless price>99
    puts "yes its not greater then"
else price<99
    puts "yes its the greatre than"
end



day="Monday"
case day
when "Monday"
    puts "working day"
when "tuesday"
    puts "working day"
when "Sunday"
    puts "holiday today"
end

#if we want to give condtion in when block then dont use value in case block

num=20
case 
when (num)>10
    puts "its not  greater then 10 "
when (num)>10
    puts "its greater then the 10"
end




