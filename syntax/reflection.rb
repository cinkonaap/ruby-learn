# ObjectSpace - window into all objects that exists within Ruby interpreter
ObjectSpace.each_object # will iterate through all loaded objects in Ruby interpreter
# if you pass argument, it will iterate over only the instances of that class or module
# (with subclasses)
ObjectSpace.each_object(Numeric)

### Simple memory profiling
def subclasses_of(superclass)
  subclasses = []
  # for each instance that is Class
  ObjectSpace.each_object(Class) do |k|
    next if !k.ancestors.include?(superclass) ||
      superclass == k ||
      k.to_s.include?('::') ||
      subclasses.include?(k.to_s)

    subclasses << k.to_s
  end

  subclasses
end

# Gets all public methods of instance
a.public_methods

# Check if instance has method
a.respond_to?
