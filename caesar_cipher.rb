puts "Enter a word: "
phrase = gets.chomp
puts "Enter the shift factor: "
number = gets.chomp.to_i

i = 0
ascii_array = []

loop do 
  break if i >= phrase.length
  asciiphrase = phrase[i].ord
  cipher = asciiphrase + number
  if (asciiphrase >= 32 && asciiphrase <= 47)
    cipher = asciiphrase
  end
  if (asciiphrase >= 65 && asciiphrase <= 90) || (asciiphrase >= 97 && asciiphrase <= 122)
    if (asciiphrase >= 65 && asciiphrase <= 90)
      if cipher > 90
        cipher = (cipher - 90) + 64
      elsif cipher < 65
        cipher = 91 - (65 - cipher)
      end
    elsif (asciiphrase >= 97 && asciiphrase <= 122)
      if cipher > 122
        cipher = (cipher - 122) + 96
      elsif cipher < 97
        cipher = 123 - (97 - cipher)
      end
    end
    ascii_array << cipher
  else
    ascii_array << cipher
  end
  i += 1
end

p caesar_cipher = ascii_array.pack('c*')



