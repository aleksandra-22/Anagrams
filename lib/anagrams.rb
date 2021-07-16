class Anagrams
	def initialize(file)
		@file = file
	end

	def read_wordlist
		if @file.is_a?(Array)
			@file
		else
    	File.readlines(@file, :encoding => "UTF-8", chomp: true)
		end
  end
    
  def get_anagrams
    result = {}
    read_wordlist.each do |word|
    	key = word.split('').sort.join
    	if result.has_key?(key)
        result[key].push(word)
      else
        result[key] = [word]
      end
    end
    result
  end
end
