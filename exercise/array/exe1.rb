numbers = [2,7,11,15]
result = 13
#old solution
def sumindex(numbers,result)
	a=(0...numbers.length).to_a
        b=a.combination(2).to_a                                                      
        for  i in b
          if numbers[i[0]]+numbers[i[1]]==result
             return i
          end
        end
        return nil 
 end
 
#new solution
def sumindex(arr,sum)
	hashmap = {} 
	for i in (0...arr.length)
            temp = sum-arr[i]
	    if (hashmap.include?(temp))
		return [hashmap[temp],i]
	    end
	    hashmap[arr[i]] = i
	end
	return nil
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
=> :sumindex
irb(main):013:0> sumindex(numbers,result)
=> [0, 2]
irb(main):014:0> result=17
irb(main):015:0> sumindex(numbers,result)
=> [0, 3]
irb(main):016:0> result=12
irb(main):017:0> sumindex(numbers,result)
=> nil




