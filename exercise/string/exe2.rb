#Exercise 2
#Given a sentence, return the length of the last word in the sentence.

def function(s)
    a=s.strip.split(" ")
    a[-1].length
end
sentence = "       This   is   my  ruby string     practical  assignment   "

function(sentence)
irb(main):039:0> function(sentence)
=> 10

    
