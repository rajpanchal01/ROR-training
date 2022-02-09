irb(main):001:0> i=1
irb(main):002:1* if i==1
irb(main):003:1*   p 'hello'
irb(main):004:1* else
irb(main):005:1*   p 'hi'
irb(main):006:0> end
"hello"
=> "hello"
irb(main):012:0> x = 1 
irb(main):013:1* unless x>=2
irb(main):014:1*   puts "x is less than 2"
irb(main):015:1* else
irb(main):016:1*   puts "x is greater than 2"
irb(main):017:0> end
x is less than 2
=> nil
irb(main):018:0> a=1
irb(main):019:1* case a
irb(main):020:1* when 1
irb(main):021:1*   p "case 1"
irb(main):022:1* when 2
irb(main):023:1*   p "case 2"
irb(main):024:1* else
irb(main):025:1*   p "case else"
irb(main):026:0> end
"case 1"
=> "case 1
#loops
irb(main):027:0> a
=> 1
irb(main):028:1* while a<10 do
irb(main):029:1*   p 'a'
irb(main):030:1*   a+=1
irb(main):031:0> end
"a"
"a"
"a"
"a"
"a"
"a"
"a"
"a"
"a"
=> nil
irb(main):032:0> 
irb(main):033:1* 3.times do p "loop"
irb(main):034:0> end
"loop"
"loop"
"loop"
=> 3

