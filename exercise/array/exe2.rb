irb(main):010:1* def pelindrome(n)
irb(main):011:1*   a=n.to_s
irb(main):012:1*   b=n.to_s.reverse
irb(main):013:2*   if(a==b)
irb(main):014:2*     true
irb(main):015:2*   else
irb(main):016:2*     false
irb(main):017:1*   end
irb(main):018:0> end
=> :pelindrome
irb(main):019:0> pelindrome(123321)
=> true
irb(main):020:0> pelindrome(123456)
=> false
irb(main):021:0> pelindrome(1221)
=> true

