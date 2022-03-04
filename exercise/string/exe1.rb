#Exercise 1
#Write a function to find the longest common prefix string amongst an array of strings.

def function(a)
   l=a.length
   if l==0
   	nil
   elsif l == 1
        a[0]
   else
        b=a.sort()
        result = ""
        for i in (0...b[0].length)
           if b[0][i] == b[-1][i]
               result += b[0][i]
           else
               break
           end
        end
        result
   end
end

string = ["challenge","characteristic","champion"] 
function(string)
irb(main):021:0> function(string)
=> "cha"
irb(main):023:0> s
=> ["aaa", "aa", "aaa"]
irb(main):043:0> function(s)
=> "aa"


