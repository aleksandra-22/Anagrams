require_relative "anagrams"

print "Enter the name of the file you want to check for anagrams: "
input_text = gets.chomp
print "Anagrams from your #{input_text} file are: \n"
puts Anagrams.new(input_text).to_s
