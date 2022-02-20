# 1.write example of each type of argument passing
#normal arguments
irb(main):001:1* def sum(a,b)
irb(main):002:1*   a+b
irb(main):003:0> end
=> :sum
irb(main):004:0> sum(2,3)
=> 5
#variable arguments
irb(main):005:1* def sum(*a)
irb(main):006:1*   a.sum
irb(main):007:0> end
=> :sum
irb(main):008:0> sum(1,2,3,4,5)
=> 15
#keyword argument
irb(main):009:1* def add(x:, y: 1)
irb(main):010:1*   x + y
irb(main):011:0> end
=> :add
irb(main):012:0> add(x:1)
=> 2
irb(main):013:0> add(x: 1, y: 2)
=> 3
#fixed required argument
#irb(main):027:1* def add(a,*b)
irb(main):028:1*   a+b.sum 
irb(main):029:0> end
=> :add
irb(main):030:0> add(1)
=> 1
irb(main):031:0> add()
ArgumentError (wrong number of arguments (given 0, expected 1+))

# 2.write example that demonstrate type of variable.
#Local variables
#A local variable name starts with a lowercase letter or underscore (_). It is only accessible or have its scope within the block of its initialization. Once the code block completes, variable has no scope.
#When uninitialized local variables are called, they are interpreted as call to a method that has no arguments.
irb(main):027:1* (1...5).each do |i|   
irb(main):028:1*   puts i   
irb(main):029:0> end   
1
2
3
4
=> 1...5

#Class variables
#A class variable name starts with @@ sign. They need to be initialized before use. A class variable belongs to the whole class and can be accessible from anywhere inside the class. If the value will be changed at one instance, it will be changed at every instance.
#A class variable is shared by all the descendents of the class. An uninitialized class variable will result in an error.
irb(main):011:1* class Raj 
irb(main):012:1*   @@number=5
irb(main):013:0> end

#Instance variables
#An instance variable name starts with a @ sign. It belongs to one instance of the class and can be accessed from any instance of the class within a method. They only have limited access to a particular instance of a class.
#They don't need to be initialize. An uninitialized instance variable will have a nil value.
irb(main):001:1* class Raj   
irb(main):002:2*   def initialize(name)   
irb(main):003:2*     @name=name   
irb(main):004:1*   end   
irb(main):005:2*   def display()   
irb(main):006:2*     puts "Hi  #@name"   
irb(main):007:1*   end   
irb(main):008:0> end   
=> :display
irb(main):009:0> a=Raj.new("raj")
irb(main):010:0> a.display()
Hi  raj
=> nil

#Global variables
#A global variable name starts with a $ sign. Its scope is globally, means it can be accessed from any where in a program.
#An uninitialized global variable will have a nil value. It is advised not to use them as they make programs cryptic and complex.
#There are a number of predefined global variables in Ruby.
$global_var = "GLOBAL" 

