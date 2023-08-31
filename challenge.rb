require './modules'

class Mylist
  include MyEnumerable

  def initialize(*values)
    @list = *values
  end

  def each(&block)
    @list.each(&block)
  end
end

list = Mylist.new(1, 2, 3, 4)
p list
p(list.all? { |item| item > 5 })
p(list.all? { |item| item < 5 })

p(list.any? { |item| item == 2 })
p(list.any? { |item| item == 5 })

p(list.filter { |e| e&.even? })
