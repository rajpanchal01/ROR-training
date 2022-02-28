irb(main):001:0> a=12345
irb(main):002:0> b=a.to_s.split("").map(&:to_i)
irb(main):003:0> b
=> [1, 2, 3, 4, 5]

