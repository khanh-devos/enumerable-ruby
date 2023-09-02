module MyEnumerable
  def all?(&block)
    myEach { |item| return false unless block.call(item) }
    true
  end

  def any?(&block)
    myEach { |item| return true if block.call(item) }
    false
  end

  def filter(&block)
    result = []
    myEach { |item| result << item if block.call(item) }
    result
  end
end
