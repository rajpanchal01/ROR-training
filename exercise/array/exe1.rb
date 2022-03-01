numbers = [2,7,11,15]
result = 13
def sumindex(numbers,result)
	a=(0...numbers.length).to_a
        b=a.combination(2).to_a                                                      
        c= b.select{ |first, last| numbers[first] + numbers[last]==result}
   return c.first
 end
irb(main):075:0>sumindex(numbers,result)
=> [0, 2]
irb(main):077:0> result=9
irb(main):078:0> sumindex(numbers,result)
=> [0, 1]
irb(main):079:0> result=26
irb(main):080:0> sumindex(numbers,result)
=> [2, 3]
irb(main):081:0> result=20
irb(main):082:0> sumindex(numbers,result)
=> nil



