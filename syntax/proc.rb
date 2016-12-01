# Proc is an object that holds a chunk of code

# most common way to make a Proc is lambda method
hello = lamda do
  puts('chunk of code')
end

# call method executes the code
hello.call

# Proc object picks up the surrounding scope when it is created (like annonymous function)
def outer
  name = 'John'

  # creating Proc also possible with `Proc.new`
  proc = Proc.new do
    # know name variable
    puts(name) # puts 'John'
  end
end

# You can create block methods with passing proc `inside` method. You can then call it by
# executing `yield` method

def run_block_proc
  yield
end

run_block_proc do
  puts('a')
  a = 2
  # this code will be executed as `yield` gets called in outer function
end

# Yielded method can also take a parameters, and they can be passed in `yield`
def run_block_proc_param
  yield(24)
end

run_block_proc_param do |i|
  puts(i) # will print 24
end

# Sometimes yielding is not enough, and you want to catch code block in explicit param
# You can do this denoting that param is code block with `&` symbol
# Then you can pass saved block to method (also with `&` symbol)
my_proc = lambda { |x| puts(x) }

def run_it_with_2(&to_run)
  to_run.call(2)
end

run_it_with_2(&my_proc)
