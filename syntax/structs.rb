### OpenStruct is an data-type like Hash, but allows to include logic
a = OpenStruct.new(a: 2, b: 3)

# to add logic create a class inheriting form OpenStruct
class BoostedHash < OpenStruct
  def sum
    a + b
  end
end

boostedHash = BoostedHash.new({a: 2, b: 3})
puts boostedHash.sum # will print 5


### Struct allows you to  create Class which is simple "Struct", or "VO",
# without using `class` keywoard, because it's returning class anyway

# Struct creates default construtor with parameters
Brand = Struct.new(:name, :country) do
  def do_it
    puts name
  end
end

Brand.new('name', 'country').do_it
