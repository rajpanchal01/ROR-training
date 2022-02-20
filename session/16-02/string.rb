irb(main):001:0> a=""
irb(main):002:0> a.empty?
=> true
irb(main):003:0> a="hi"
irb(main):004:0> p "#{a} raj"
"hi raj"
=> "hi raj"
=> nil
irb(main):006:0> b="abc xyz"
irb(main):007:0> a[2,4]
=> ""
irb(main):008:0> a[1,6]
=> "i"
irb(main):009:0> b[1,5]
irb(main):010:0*   
irb(main):011:0> b.include?("abc")
irb(main):012:0> c=1010
=> "00001010"
=> "aaaaaaahi"
=> "hiaaaaaaa"
=> "HI"
irb(main):019:0> a.downcase
=> "hi"
irb(main):020:0> b.strip
=> "abc xyz"
irb(main):021:0> d="\nraj\n"
irb(main):022:0> d
=> "\nraj\n"
=> "hi"
=> "raj"
irb(main):027:0> b.start_with?("ab")
=> true
irb(main):028:0> b.end_with?("cd")
=> false
irb(main):029:0> b.split
=> ["abc", "xyz"]
irb(main):030:0> b.split.join
=> "abcxyz"
irb(main):031:0> b.chars
=> ["a", "b", "c", " ", "x", "y", "z"]
irb(main):032:0> a.gsub("abc","cdf")
=> "hi"
irb(main):033:0> b.gsub("abc","cdf")
=> "cdf xyz"
irb(main):034:0> b.chomp("z")
=> "abc xy"
irb(main):035:0> a.count("a")
=> 0
irb(main):036:0> b.count("a")
=> 1
irb(main):037:0> 


