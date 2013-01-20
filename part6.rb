class String
  def singularize
    self.gsub(/s$/, '')
  end

  def letters
    self.gsub(/\W+/, '')
  end

  def palindrome?
    self.letters.downcase == self.letters.downcase.reverse
  end
end

class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}
  def method_missing(method_id)
    singular_currency = method_id.to_s.singularize 
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
    self / @@currencies[currency.to_s.singularize] 
  end
end


module Enumerable
  def palindrome?
    self.to_a == self.to_a.reverse
  end
end
