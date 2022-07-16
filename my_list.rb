require_relative './my_enumerable'

# My List
class MyList
  # Loads my enumerable methods
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    return to_enum(:each) unless block_given?

    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

p(list.all? { |item| item < 5 })

p(list.all? { |item| item > 5 })

p(list.any? { |item| item == 2 })

p(list.any? { |item| item == 5 })

p(list.filter(&:even?))
