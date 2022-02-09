irb(main):001:0> n = 1
irb(main):002:1* while n <= 5
irb(main):003:1*   puts "* " * n
irb(main):004:1*   n += 1
irb(main):005:0> end
        * 
      * * 
    * * * 
  * * * * 
irb(main):011:0> 5.times { |i| puts ('* ' * (i+1)) }
* 
* * 
* * * 
* * * * 
* * * * * 
irb(main):013:0> i = 1
irb(main):014:1* 1.upto(n) do
irb(main):015:1*   print ' ' * n
irb(main):016:1*   print '*' * (2 * i -1)
irb(main):017:1*   print "\n"
irb(main):018:1*   n -= 1
irb(main):019:1*   i += 1
irb(main):020:0> end
    *
   ***
  *****
 *******
=> 1
irb(main):021:0> 1.upto(5).each {|n| puts " " * (5 - n) + n.downto(1).to_a.join(
" ")}
    1
   2 1
  3 2 1
 4 3 2 1
5 4 3 2 1
=> 1
irb(main):022:0> 
irb(main):023:0> 
irb(main):024:0> 

irb(main):029:0> n=4
irb(main):030:0> n
=> 4
irb(main):031:1* n.downto(0) do
irb(main):032:1*   puts "* " * n
irb(main):033:1*   n -= 1
irb(main):034:0> end
* * * * 
* * * 
* * 
* 

