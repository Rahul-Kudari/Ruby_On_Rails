#inbuilt metod  get
# to take input from user


#its gives the String
name=gets.chomp
name1=gets.chomp

puts name+name1


#it gives you the integer

#its also known as the the method chaining
num1=gets.chomp.to_i
num2=gets.chomp.to_i

def add(num1,num2)
    num1*num2
end

puts add(num1,num2)


arr=[]
5.times do
    num=gets.chomp.to_i
    arr<<num
end

arr.each do |x|
    puts x
end

sym=gets.chomp.to_sym
puts sym.class



