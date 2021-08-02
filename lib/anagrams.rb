class Anagrams
  def initialize(file)
    @file = file
    @hash = {}
    read_wordlist.each do |word|
      key = word_hash(word)
      @hash[key] ||= []
      @hash[key] << (word)
    end
  end

  def read_wordlist
    if @file.is_a?(Array)
      @file
    else
      File.readlines(@file, encoding: "UTF-8", chomp: true)
    end
  end

  def get_word(input_words)
    key = word_hash(input_words)
    @hash[key]
  end

  def show
    @hash.values.select {|word_values| word_values.length > 1}.each do |words|
      puts to_s(words)
    end
  end

  def to_s(show)
    show.join(", ")
  end

  def word_hash(word_key)
    word_key.split('').sort.join
  end
end
