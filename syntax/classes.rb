# most basic superclass for each object is `Object`
class InheritsFromObject

end

# inheritance is denoted with `<` symbol
class InheritsFromParent < Parent

  # constructor is `new` method, but for real its just a method that is called when
  # new instance is created
  def initialize(owner)

    # to call parents method
    super(owner)

    #instance variable
    @rate = 2
  end
end

# you can change methods of instances at runtime
a = Object.new
def a.some_func
  # it changes some_func of a at runtime
end

# instantiating if wasnt already
@subject || (@subject = SomeClass.new)

### Static variables and methods
class StaticVariables
  @@static_var = 2

  # it works, because self reference to this class, not instance outside of instance methods
  def self.method_static
    puts('s method')
  end

  # or you can do some constants
  ERROR = 1
  WARNING = 2

  # so you can create singleton
  def self.instance
    @@instance || (@@instance = StaticVariables.new)
  end

  # but you can also use Singleton module
  include Singleton
end
