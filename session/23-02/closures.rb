#1.Block:In Ruby, blocks are snippets of code that can be created to be executed later. Blocks are passed to methods that yield them within the do and end keywords. One of the many examples is the #each method.
ex:
[1,2,3,4].each do |n|
  puts "#{n}!"
end

#2.lambda :Lambdas are essentially procs with some distinguishing factors. They are more like "regular" methods in two ways: they enforce the number of arguments passed when they're called and they use "normal" returns.
#When calling a lambda that expects an argument without one, or if you pass an argument to a lambda that doesn't expect it, Ruby raises an ArgumentError.

irb(main):001:0> a = lambda { return 10 }
irb(main):002:0> a
=> #<Proc:0x0000564bf38412b0 (irb):1 (lambda)>
irb(main):003:0> a.call
=> 10
irb(main):004:0> 


#3.Proc:A "proc" is an instance of the Proc class, which holds a code block to be executed, and can be stored in a variable. To create a proc, you call Proc.new and pass it a block.

irb(main):004:0> proc = Proc.new { |n| puts "#{n}!" }
irb(main):005:0> proc.call(1)
1!
=> nil
