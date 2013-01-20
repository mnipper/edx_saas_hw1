#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  phrase = str.scan(/\w+/).join.downcase
  phrase == phrase.reverse
end

def count_words(str)
  h = Hash.new
  words = str.downcase.scan(/\w+/)
  words.each do |word|
    h[word] = h.has_key?(word) ? h[word]+1 : 1
  end
  h
end
