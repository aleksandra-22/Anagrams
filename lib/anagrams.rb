require 'active_support'

class Anagrams
  def initialize(file)
    @file = file
    @anagram_cache = {}
  end

  def read_wordlist
    File.readlines(@file, encoding: "UTF-8", chomp: true)
  end

  def generate_anagrams
    read_wordlist.each do |word|
      key = word_hash(word)
      @anagram_cache[key] ||= []
      @anagram_cache[key] << (word)
    end
    @anagram_cache
  end
  
  def get_anagrams(input_word = nil)
    generate_anagrams if @anagram_cache.empty?
    if input_word.present?
      key = word_hash(input_word)
      @anagram_cache[key]
    else
      @anagram_cache.values.select { |word_values| word_values.length > 1 }
    end
  end

  def to_s
    get_anagrams.map { |words| words.join(", ") }.join("\n")
  end

  def word_hash(get_hash)
    get_hash.split('').sort.join
  end
end
