 def pelindrome(n)
  a=n.to_s
  a==a.reverse ? true :false
end

=> :pelindrome
irb(main):019:0> pelindrome(123321)
=> true
irb(main):020:0> pelindrome(123456)
=> false
irb(main):021:0> pelindrome(1221)
=> true

irb(main):022:0> pelindrome(121)
=> true
irb(main):023:0> pelindrome(11122111)
=> true
irb(main):024:0> pelindrome(1)
=> true
irb(main):025:0> pelindrome(123)
=> false

