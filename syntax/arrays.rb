# pushing to array is possible with method `<<`
a = [ 1, 2 ]
a << 3


# Default array methods are not mutating arrays
a.sort # `a` won't be sorted

# But they have mutating equivalents with `!` suffix
a.sort! # `a` will be sorted

# you can create array-like methods in Ruby (they are usable in iterators)
def <<(element)

end

def [](index)

end

def []=(index, new_value)

end

# even block ones
def each(&block)

end

# there is a for each method that also gives index
a = []
a.each_index do |element, index|

end

# for iterating through Strings (which also are iterators) there are methods
a = 'abcd'
a.each_line # will iterate through each line
a.each_byte # will iterate through each character

# for iterating through Hash
a = {}
a.each_key # will iterate through each key
a.each_value # will iterate through each value
a.each # will iterate and yield key and value

# you can repeat some code n times with `times`
some_number.times do |i|
  puts('repeating some thing')
end
