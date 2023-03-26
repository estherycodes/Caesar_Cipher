dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Enter a word"
string = gets.chomp.downcase

def substrings(string, dictionary)
    p contain = dictionary.include?(string)
    p number = dictionary.count(string)
    if contain == true
        hash = {string => number}
        p hash
    end
end


substrings(string, dictionary)