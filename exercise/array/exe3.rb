irb(main):030:1* def uniqfun(a)
irb(main):031:1*   c=a.uniq
irb(main):032:2*   while c.length!=a.length
irb(main):033:2*     c.push(nil)
irb(main):034:1*   end
irb(main):035:1*   c
irb(main):036:0> end
=> :uniqfun
n=[1,1,2,2,3,3,4,4,4,4]
irb(main):037:0> uniqfun(n)
=> [1, 2, 3, 4, nil, nil, nil, nil, nil, nil]

