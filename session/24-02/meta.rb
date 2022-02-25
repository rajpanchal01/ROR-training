#- Send method
irb(main):016:0> 1.send(:+, 1)
=> 2
irb(main):017:1* class Hello
irb(main):018:2*   def hello(*args)
irb(main):019:2*     puts 'Hello ' + args.join(' ')
irb(main):020:1*   end
irb(main):021:0> end
=> :hello
irb(main):022:0> h = Hello.new
irb(main):023:0> h.send :hello, 'Panchal', 'Raj'
Hello Panchal Raj
=> nil

#- method_missing
irb(main):054:1* class A
irb(main):055:2*   def ary
irb(main):056:2*     [:a,:b,:c]
irb(main):057:1*   end
irb(main):058:2*   def method_missing(method, *args)
irb(main):059:2*     puts ary.include?(method)
irb(main):060:1*   end
irb(main):061:0> end
=> :method_missing
irb(main):062:0> a = A.new
irb(main):063:0> a.b
true
=> nil
irb(main):064:0> a.d
false
=> nil


#- define_method
irb(main):066:2*   def fred
irb(main):067:2*     puts "In Fred"
irb(main):068:1*   end
irb(main):069:2*   def create_method(name, &block)
irb(main):070:2*     self.class.send(:define_method, name, &block)
irb(main):071:1*   end
irb(main):072:1*   define_method(:wilma) { puts "Charge it!" }
irb(main):073:0> end
=> :wilma
irb(main):074:1* class B < A
irb(main):075:1*   define_method(:barney, instance_method(:fred))
irb(main):076:0> end
=> :barney
irb(main):077:0> a = B.new
irb(main):078:0> a.barney
In Fred
=> nil
irb(main):079:0> a.wilma
Charge it!
=> nil
irb(main):080:0> a.create_method(:betty) { p self }
=> :betty
irb(main):081:0> a.betty
#<B:0x0000561e2dc479e8>
=> #<B:0x0000561e2dc479e8>



#- class_eval
irb(main):110:1* class Employee
irb(main):111:0> end
=> nil
irb(main):112:1* Employee.class_eval do
irb(main):113:2*   def say_hello
irb(main):114:2*     puts 'Hello'
irb(main):115:1*   end
irb(main):116:0> end
=> :say_hello
irb(main):117:0> e = Employee.new
irb(main):118:0> e.say_hello
Hello
=> nil


#- instance_eval
irb(main):082:1* class Person
irb(main):083:2*   def initialize(name)
irb(main):085:1*   end
irb(main):086:0> end 
=> :initialize
irb(main):087:0> 
irb(main):088:0> person1 = Person.new("bob")
irb(main):089:0> person2 = Person.new("jane")
irb(main):090:1* person1.instance_eval do
irb(main):091:2*   def name
irb(main):092:2*     @name.capitalize
irb(main):093:1*   end
irb(main):094:0> end
=> :name
irb(main):096:0> person1.name
=> "Bob"

#- singleton method
irb(main):119:1* class A
irb(main):120:2*   def m1
irb(main):121:2*     p 1
irb(main):122:1*   end
irb(main):123:0> end
=> :m1
irb(main):124:0> a=A.new
irb(main):125:0> a.m1
1
=> 1
irb(main):126:1* def a.m2
irb(main):127:1*   p 2
irb(main):128:0> end
=> :m2
irb(main):129:0> a.m2
2
=> 2
irb(main):130:0> b=A.new
irb(main):131:0> b.m1
1
=> 1
irb(main):132:0> b.m2
no method error
#-singleton class
irb(main):133:0> a.class
=> A
irb(main):134:0> a.singleton_class
=> #<Class:#<A:0x0000561e2dc64818>>


