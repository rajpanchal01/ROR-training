1: write a program that handle the bellow exception. and also check when it is occurred
Exception

 #NoMemoryError: raised when memory allocation fails.
 begin
    limit = 2**31 - 1
    puts "Limit: #{limit}"
    puts "a" * limit
rescue NoMemoryError => e
    puts "#{e.class}: #{e.message}"
    puts e.backtrace.join("\n")
end

 #ScriptError:: used when a script is unable to be executed. This can be due to errors in any of the subclasses of ScriptError.
 def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
    puts exception.backtrace.join("\n")
end
begin
    require 'invalid/file/path'
rescue ScriptError => e
    print_exception(e, true)
rescue Exception => e
    print_exception(e, false)
end
  # LoadError :raised if a required file doesn't load
def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
    puts exception.backtrace.join("\n")
end
begin
    require 'invalid/file/path'
rescue LoadError => e
    print_exception(e, true)
rescue Exception => e
    print_exception(e, false)
end
#  NotImplementedError
def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
    puts exception.backtrace.join("\n")
end
begin
    pid = Process.fork { sleep 0.5 }
rescue NotImplementedError => e
    print_exception(e, true)
end
#SyntaxError:: occurs when trying to execute code with invalid syntax.
def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
    puts exception.backtrace.join("\n")
end
begin
    1=2
rescue SyntaxError => e
    print_exception(e, true)
end
# SignalException: used when a signal is received on a process
def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
    puts exception.backtrace.join("\n")
end
begin
    # Sending `TERM` signal to active process
    Process.kill('TERM', Process.pid)
rescue SignalException => e
    print_exception(e, true)
rescue Exception => e
    print_exception(e, false)
end
#   Interrupt: raised if the interrupt signal is received (i.e., a user pressed Ctrl-C).
def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
    puts exception.backtrace.join("\n")
end
begin
    # Loop indefinitely
    count = 0
    while true
        count = count + 1
        puts count
        sleep 1
    end
rescue Interrupt => e
    print_exception(e, true)
rescue SignalException => e
    print_exception(e, false)
rescue Exception => e
    print_exception(e, false)
end

 #StandardError:used for the most common types of exceptions. Usually the subclasses will be raised rather than StandardError itself. However, when a rescue clause without a specific StandardError subclass is executed, StandardError will be raised.
 def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
    puts exception.backtrace.join("\n")
end
begin
    raise "Uh oh!"
rescue IndexError => e
    print_exception(e, true)
rescue NameError => e
    print_exception(e, true)
rescue RegexpError => e
    print_exception(e, true)
rescue => e
    print_exception(e, false)
end
 # ArgumentError: occurs when arguments are incorrect (i.e., the wrong number of arguments).

 def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
    puts exception.backtrace.join("\n")
end
begin
    # Create array of numbers 1 through 10
    data = *(1...10)
    # Try to grab a random sample from array, with too many arguments
    puts data.sample(3, 5)
rescue ArgumentError => e
    print_exception(e, true)
rescue => e
    print_exception(e, false)
end
 # IOError:: raised during an input/output operation failure.
 # EOFError:: occurs when reaching the end of the file by some IO operations.
 # IndexError: used when the index is invalid.
 def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
    puts exception.backtrace.join("\n")
end
begin
    index = 5
    names = ["Alice", "Bob", "Christine", "Dan"]
    puts names.fetch(index)
rescue IndexError => e
    print_exception(e, true)
rescue => e
    print_exception(e, false)
end
 
 #  LocalJumpError:: raised if Ruby cannot yield as requested in the code.
 begin
    # Create a book hash.
    book = {
        title: 'The Stand',
        author: 'Stephen King',
        published_at: 1978
    }
    # Returns the title of the book argument.
    def get_title(book)
        puts 'Yielding...'
        # Yields to the code block associated with method call.
        yield book[:author]
        puts 'Retrieving title...'
        puts book[:title]
        return book[:title]
    end
    # Call the get_title method, WITHOUT an associated code block.
    get_title(book)
rescue LocalJumpError => e
    print_exception(e, true)
rescue => e
    print_exception(e, false)
end
 
 #  NameError:: raised if a name is undefined or invalid.
 def valid_name_example
    begin
        title = 'The Stand'
        # Output a title value, after declaration.
        puts title
    rescue NameError => e
        print_exception(e, true)
    rescue => e
        print_exception(e, false)
    end
end

 #    NoMethodError:: used when a method is called on a receiver that doesn't have the method defined, and the receiver doesn't respond with method_missing.
 def create_book
    begin
        # Create a new book
        book = Book.new(title: 'The Stand')
        # Output book class type.
        puts book
        # Output book title.
        puts book.title
    rescue NoMethodError => e
        print_exception(e, true)
    rescue => e
        print_exception(e, false)
    end    
end

 # RangeError:: raised if a numerical value is out of range.
 def create_abridged_book
    begin
        # Create a new book
        book = AbridgedBook.new(author: 'Stephen King', page_count: 823, title: 'The Stand')
        # Output class type.
        puts book
        # Output fields.
        puts book.author
        puts book.title
        puts book.page_count    
    rescue RangeError => e
        print_exception(e, true)
    rescue => e
        print_exception(e, false)
    end    
end
 #    FloatDomainError: occurs when attempting to convert certain float values to unsupported classes.
 def print_exception(exception, explicit)
    puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
    puts exception.backtrace.join("\n")
end
def to_integer(value)
    begin
        # Convert value to integer.
        i = value.to_i
        puts "#{value} converted to #{i}"
    rescue FloatDomainError => e
        print_exception(e, true)
    rescue => e
        print_exception(e, false)
    end 
end
to_integer(Float::INFINITY)
 # RegexpError:raised if a given regular expression is invalid.
 begin
        regex = Regexp.new('+');
        result = regex.match('The quick brown fox jumps over the lazy dog.')
        puts result
    rescue RegexpError => e
        print_exception(e, true)
    rescue => e
        print_exception(e, false)
    end 
    
 # RuntimeError:used when given an invalid operation. This is a generic error class.
 # SecurityError:raised when a potentially unsafe operation is attempted.
 # SystemCallError:raised for low-level, platform-dependent errors. These exceptions look like Errno:xxx.

 # SystemStackError:occurs during a stack overflow (i.e., in the case of an accidental infinite loop).

 # ThreadError:occurs if an invalid operation is being attempted on a Thread.
 # TypeError: raised when an object is not of the expected type.

 # ZeroDivisionError:used if attempting to divide an integer by 0.
 #SystemExit:raised if the exit method is called to terminate the script.
 #fatal:used internally by Ruby when it must exit due to a fatal error. Errors of this class can't be rescued


2: write a program that raise the Exception.
begin  
   raise 'A test exception.'  
rescue Exception => e  
   puts e.message  
end  
