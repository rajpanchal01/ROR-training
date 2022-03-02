#1.Why < is execured first and then > is executed?
rajpanchal01@rajpanchal01-Aspire-A515-43:~/Desktop/ROR-training/session/14-02$ ruby text.txt>output.txt
text.txt:2: syntax error, unexpected end-of-input
rajpanchal01@rajpanchal01-Aspire-A515-43:~/Desktop/ROR-training/session/14-02$ ruby task.rb<text.txt
there is 2 lines here.
#there is text file in ruby command so it is syntax  error .

#2. Why readlines was not printing \n?

#- In programming languages, such as C, Java, and Ruby, the newline character is represented as a '\n' which is an escape sequence.
#- A newline is a character used to represent the end of a line of text and the beginning of a new line.
#- So whenever ruby compiler encounters '\n', it moves the cursor to next line. However, if you
#  specifically want to print '\n' to output screen then you would have to right like this '\\n'.


