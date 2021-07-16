require_relative "anagrams"

print "Enter the name of the file you want to check for anagrams: "
input_text = gets.chomp
print "Anagrams from your #{input_text} file are: \n"
an = Anagrams.new(input_text)
an.get_anagrams.values.select {|word_values| word_values.length > 1}.each do |words|
  puts words.join(", ")
end
