

puts "============inheritance=================="

#this is the class
class Base
    def add
        "parent method"
    end
end

# < helps us to inherit the parent properties 
class Demo<Base
 def add
    "over ridden"
 end

end



d=Demo.new
b=Base.new
# puts d.add method overriding
puts d.add
puts b.add


class Test
    def ancisto
        "hi this is ancestors"
    end
end
# super keyword helps is parent class method

class Review<Test
    def ancisto
        puts "this is child"
        super 
    end
end
r=Review.new
puts r.ancisto
puts r.respond_to?(:ancistors);
# this is like instanceOf in jave it tell us the method is present in that class or not it will return true or false



class Ajji
    def child
        124
    end
end

class Ajja<Ajji
end

a=Ajja.new
puts a.respond_to?(:child);#it will return true if the child methid present in the class
no=100
puts no.respond_to?(:to_i)
puts no.respond_to?(:length)

#if we call parent method if its not present what it will do

class Grandma
    def add
        "hello this is grandpa "
    end
end
class Grandpa<Grandma
    def add
        super
    end
end

c=Grandpa.new
puts c.add



class Papa
    def puts
     p   "hello  i am ur dada"
    end
end

class Daughter<Papa
    def puts
   super
   p "hello this is karnal method" 
    end   
end

d= Daughter.new
puts d.puts


class Mama
    
    def initialize(name,id)
        @daughter=name
        @id=id
    end
   
end
class Mava<Mama

  def pp
    @daughter+"   " +@id.to_s
  end
end


m=Mava.new("santosh",1233)
puts m.pp

# ==========================here we are using super =========================================


class Parent
    def initialize(name)
        @name=name
    end
    # def info
    #     puts @name
    # end
end

class Child<Parent
    def initialize(name , id)
        super(name)
        @id=id
    end
    def info
        @id.to_s+@name
    end
end

c=Child.new("karthik",7);
puts c.info



class Addtion
    def add(num1,num2)
     puts    num1+num2
    end
end

class Multiply<Addtion
    def add(num1,num2)
       super
       puts num1*num2
    end
end
m=Multiply.new
# puts m.mul(10,2);
puts m.add(20,100);











