rajpanchal01@rajpanchal01-Aspire-A515-43:~/Desktop/ROR-training/session/14-02$ ruby task.rb<text.txt>output.txt
rajpanchal01@rajpanchal01-Aspire-A515-43:~/Desktop/ROR-training/session/14-02$ irb
irb(main):001:0> File.open("text.txt").each_byte{|byte| puts byte}
115
111
109
101
32
116
101
120
116
32
105
32
104
101
114
101
46
10
97
111
116
104
101
114
32
116
101
120
116
46
10
=> #<File:text.txt>

irb(main):003:0> File.open("text.txt").each_char{|char| puts char}
s
o
m
e
 
t
e
x
t
 
i
h
e
e

a
n
t
h
e
r
 
t
e
x
t
.

=> #<File:text.txt>

irb(main):004:0> f=File.new("text.txt","r")
irb(main):005:0> puts f.gets
some text is here.
=> nil
irb(main):006:0> f.close
=> nil

irb(main):007:0> File.new("text.txt").each{|line| puts line}
some text is here.
another text.
=> #<File:text.txt>

irb(main):008:0> puts File.open("text.txt").readlines
some text is here.
another text.
=> nil
irb(main):009:0> 


