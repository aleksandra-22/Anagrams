require_relative "anagrams"

input_file = "anagrams-wordlist.txt"
print "Enter some words to seach for their anagrams: "
input_word = gets.chomp.split

an = Anagrams.new(input_file)
input_word.each do |result|
  an_result = an.get_word(result)
  puts("Anagrams for word '#{result}' are: ")
  puts an_result
end
