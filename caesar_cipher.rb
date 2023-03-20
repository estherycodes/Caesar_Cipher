puts "Enter a word: "
phrase = gets.chomp
p phrase
puts "Enter the shift factor: "
number = gets.chomp.to_i
number

#phrase = phrase.split("")
#asciiphrase = phrase.bytes
#p asciiphrase

i = 0
ascii_array = Array.new 
loop do 
asciiphrase = phrase[i].ord.to_i
cipher = asciiphrase + number
ascii_array << cipher
i += 1
break if i > phrase.length
ascii_array
caesar_cipher = ascii_array.pack('c*')
end



