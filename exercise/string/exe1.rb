#Exercise 1
#Write a function to find the longest common prefix string amongst an array of strings.
def function(a)
   l=a.length
   if l==0
   	nil
   elsif l == 1
        a[0]
   else
        a.sort()
        result = ""
        for i in (0...a[0].length)
           if a[0][i] == a[-1][i]
               result += a[0][i]
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

