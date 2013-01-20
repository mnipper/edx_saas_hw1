class CartesianProduct
  include Enumerable
  attr_accessor :a, :b 
  
  def initialize(a, b)
    @a = a
    @b = b
  end

  def each
    @a.each do |a|
      @b.each do |b|
        yield [a,b] 
      end
    end
  end
end
