#1. example of each array method
irb(main):001:0> a=[1,2,3]
irb(main):002:0> b=Array.new(3)
irb(main):003:0> a
=> [1, 2, 3]
irb(main):004:0> b
=> [nil, nil, nil]
irb(main):005:0> b.compact
=> []
irb(main):006:0> a.count
=> 3
irb(main):007:0> a.push(4)
=> [1, 2, 3, 4]
irb(main):008:0> a.pop
=> 4
irb(main):009:0> a
=> [1, 2, 3]
irb(main):010:0> a.min
=> 1
irb(main):011:0> a.max
=> 3
irb(main):012:0> a.reverse
=> [3, 2, 1]
irb(main):013:0> a.sort
=> [1, 2, 3]
irb(main):014:0> a.find_index(3)
=> 2
irb(main):015:0> a.length
=> 3
irb(main):016:0> a[1]
=> 2

#2. example of each hash method
irb(main):001:0> a={}
irb(main):002:0> b=Hash.new()
irb(main):003:0> a
=> {}
irb(main):004:0> b
=> {}
irb(main):006:0> a["two"]=2
irb(main):007:0> a["three"]=3
irb(main):008:0> a
=> {"one"=>1, "two"=>2, "three"=>3}
=> ["one", "two", "three"]
irb(main):010:0> a.values
=> [1, 2, 3]
irb(main):011:0> a.length
=> 3
irb(main):013:0> a.each {|key, value| puts "#{key}: #{value}"}
one: 1
two: 2
three: 3
=> {"one"=>1, "two"=>2, "three"=>3}
irb(main):014:0> a.empty?
=> false
irb(main):015:0> 


#3. example of each range method
irb(main):001:0> (1..5)
irb(main):002:0> a=[]
irb(main):003:0> a=(1..5)
irb(main):004:0> a
=> 1..5
irb(main):005:0> a.min
=> 1
irb(main):006:0> a.max
irb(main):008:0> a.count
=> 5
irb(main):009:0> a.first(3)
=> [1, 2, 3]
irb(main):010:0> a.last(3)
=> [3, 4, 5]
irb(main):012:0> a.each {|n| print n, ' ' }
1 2 3 4 5 => 1..5


#4. convert multi dim array in single dimension but without using a flatten method
irb(main):001:0> a=[[1,2,3],[4,5,6],[7,8,9]]
irb(main):002:0> a
=> [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
irb(main):003:0> results = []
irb(main):004:1*   a.each do |element|
irb(main):005:2*     if element.class == Array
irb(main):006:2*       element.each {|value| results << value}
irb(main):007:2*     else
irb(main):008:2*       results << element
irb(main):009:1*     end
irb(main):010:0>   end
=> [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
irb(main):011:0> results
=> [1, 2, 3, 4, 5, 6, 7, 8, 9]


