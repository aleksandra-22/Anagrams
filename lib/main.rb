require_relative "anagrams"

print "Enter the name of the file you want to check for anagrams: "
input_text = gets.chomp
an = Anagrams.new(input_text)
an.get_anagrams.each do |words|
    puts words
end
