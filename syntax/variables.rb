# variables which starts with single @ are instance variables
@owner = 3

# they are not public! you have to create getter or setter method manually
def owner
  @owner
end

def owner=(value)
  @owner = value
end

# or you can use provided by ruby shortcut to create getter and setters (meta-programming)
attr_reader :owner
attr_accessor :owner2, :owner3

# current scope can be accessed via `self` keywoard
def me
  puts(self)
end

# constant variable is all upper-cased
ERROR_TYPE = 1
WARNING_TYPE = 2

# there are also global variables, which starts with `$`
$logger = SomeLogger.new
