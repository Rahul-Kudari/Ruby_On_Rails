num=100;
name="rahul"
flag=true 

# puts num+name+flag  we cant concat becz all are objects of different types then it through error
# use the polarization

puts name+" id : #{num}"+ "  it #{flag}"

puts name+num.to_s+flag.to_s



