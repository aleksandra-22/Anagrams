require_relative "anagrams"

input_file = "anagrams-wordlist.txt"
print "Enter some words to seach for their anagrams: "
input_words = gets.chomp.split

an = Anagrams.new(input_file)
input_words.each do |input_word|
  an_input_word = an.get_anagrams(input_word)
  puts("Anagrams for word '#{input_word}' are: ")
  puts an_input_word
end
