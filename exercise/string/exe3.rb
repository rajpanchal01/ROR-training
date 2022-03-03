#Exercise 3
#Reverse only vowels in the given string.
def function(s)
   a=s.split("")
   vowels=['a','e','i','o','u']
   v=[]
   result=""
   for i in a
      if(vowels.include?(i))
          v.push(i)
      end
   end
   for i in a 
      if(vowels.include?(i))
          result+=v.pop
      else
          result+=i
      end
   end
   result
end
    
irb(main):025:0> string = "communication"
irb(main):026:0> function(string)
=> "comminacituon"

          
