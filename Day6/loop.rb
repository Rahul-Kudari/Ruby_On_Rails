# for loop to iterate the values
puts "for loop================"
for i in 1..10
    print "#{i} "
end
puts

# while loop
#if the condition is true then it will enter into the loop and performs operation
puts "while loop ==========================="
i=0
while i<10
    print "#{i} "
    i+=1
end
puts

#until loop
#if the condition is false then it will enter into the loop
puts "until loop====================="
k=0;
until k>10 do
    print "#{k} "
    k+=1;
end
puts 
#loop 
# at the end we will use the break if if condition is setidfied then it will break from the loop

puts "loop============="
i=0
loop do 
      print "#{i} "
    i+=1;
    break if i>10
end
puts
#redo helps us to run the on operatin repeats once
count=0
for i in 5...10
    print "#{i} "
    if i==7 && count<4
        count+=1
        redo
    end
end
puts 
puts "each loop===================="
#each loop 
arr=[1,2,3,4,5,6,7,8];
arr.each do |no|
    print "#{no} "
end
puts 
puts "times loop============"
10.times do |n|
    print "#{n} "
end


#any vs all vs map vs collect 
puts 
arr=[1,2,3,4,5,6,7,8];
#it will return the true if any one of the condition is true
puts "any====="
print arr.any?{|n| n<4}

puts
#if the all the conditon are satisfied then only it return true
puts "all================="
print arr.all?{|n| n>5}

puts 
#it will collects the values that which are setisfied the conditon
puts "select===================="
print arr.select{|n| n>5}
puts 

# print arr.select!{|n| n>5}  it helps us to the 

#it will collect the value which are condition is false 
puts "reject===================="
print arr.reject{|n| n>5}
puts 
puts "map====================="

#both will give the modified array with same length
print arr.map{|n| n*2}
puts 
print arr.collect{|n| n*2}






