class String
  def sort_letters
    self.downcase.split(%r{\s*}).sort.join
  end
end

def combine_anagrams(words)
  anagrams = []
  words.each do |word|
    anagram = words.select {|w| w.sort_letters == word.sort_letters }
    anagrams << anagram
  end
  anagrams.uniq
end
