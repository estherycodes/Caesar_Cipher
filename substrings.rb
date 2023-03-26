dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Enter a word"
string = gets.chomp.downcase

def substrings(string, dictionary)
    counts = {}
    dictionary.each do |word|
      ptr = 0
      while ptr < string.length
        index = string.index(word, ptr)
        break if index.nil?
        counts[word] ||= 0
        counts[word] += 1
        ptr = index + word.length
      end
    end
    p counts
  end


substrings(string, dictionary)