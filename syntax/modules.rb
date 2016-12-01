# module is a package for methods and constants
# you cannot create instance of a module

### Modules as mixins

# you can include module in a class, which will pull in all INSTANCE methods and constants
# (then its Mixin)
module ModuleA
  def self.class_method_b

  end

  def method_a

  end
end

class ModuledClass
  include ModuleA

  # method_a is accessible
  # ModuleA will have access to all methods and instance variables of inclusion class
end

# Ruby firstly will check if method is defined direcly in class
# If not, it will search all modules (from last included class)

# you can also add all CLASS level methods with extending module in a class
class ModuledClassWithClassMethods
  extend ModuleA
  # self.class_method_b is accessible
end
