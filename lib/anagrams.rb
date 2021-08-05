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
  
  def get_anagrams(input_word)
    key = word_hash(input_word)
    @anagram_cache[key] #if you put generate_anagrams[key] instead, it works, but "slow"
  end

  def show
    generate_anagrams.values.select {|word_values| word_values.length > 1}.each do |words|
      puts to_s(words)
    end
  end

  def to_s(show)
    show.join(", ")
  end

  def word_hash(get_hash)
    get_hash.split('').sort.join
  end
end
