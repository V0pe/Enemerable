module MyEnumerable
  def all?
    return true unless block_given?

    each do |item|
      return false unless yield item
    end
    true
  end

  def any?
    return true unless block_given?

    each do |item|
      return true if yield item
    end
    false
  end

  def filter
    arr = []
    each do |item|
      arr.push(item) if yield item
    end
    arr
  end
end
