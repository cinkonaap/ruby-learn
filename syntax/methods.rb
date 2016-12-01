# method with arbitrary number of arguments
def method_one(a, *names)
  # names is array

  # you can spread it also into function
  another_method(*names)
end

# there is a method that is called when executed method isn't found in lookup chain
def method_missing(name, *args)
  # you can execute method by name using send method
  @subject.send(name, *args)

  # and this is automated delegation
end

# Forwardable module allows method delegation with (meta-programming) syntax
class A
  # extends because Forwardable gives class level methods
  extend Forwardable

  # def_delegators will delegate given methods to `subject`
  def_delegators :@subject, :sub_method_a, :sub_method_b
end
