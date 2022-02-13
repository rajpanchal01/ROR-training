#1.strptime and strftime.
#*strftime means string formatter, this will format a datetime object to string format.
irb(main):001:0> t=Time.now
irb(main):002:0> t.class
=> Time
irb(main):004:0> a=t.strftime('%Y-%d-%m %H:%M:%S')
irb(main):005:0> a
=> "2022-13-02 11:33:47"
=> String

#*strptime means string parser, this will convert a string format to datetime.
irb(main):036:0> require 'time'
=> true
irb(main):037:0> Time.strptime("2000-10-31", "%Y-%m-%d")
=> 2000-10-31 00:00:00 +0530
irb(main):038:0> a=Time.strptime("2000-10-31", "%Y-%m-%d")
irb(main):039:0> a
=> 2000-10-31 00:00:00 +0530
irb(main):040:0> a.class
=> Time

#2.difference between collect and reject.
 #reject() is a Array class method which returns new array containing the items in the array for which the given block is not true.
 #collect will return boolean values for the given condition.
 irb(main):001:0> a=[1,2,3,4,5,6,7]
irb(main):002:0> a.reject {|num| num > 4 }
=> [1, 2, 3, 4]
irb(main):003:0> a.collect{|num| num<4}
=> [true, true, true, false, false, false, false]
irb(main):004:0> 


