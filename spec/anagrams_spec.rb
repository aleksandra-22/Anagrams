require_relative "../lib/anagrams"

RSpec.describe Anagrams do
  describe '#show' do
    it "returns all anagrams from a file" do
      an = Anagrams.new("test.txt")
        expect(an.show).to eql([["boaster", "boaters"], ["paste", "pates"], ["fresher", "refresh"]])
    end

    it "returns all anagrams from an array" do
      an = Anagrams.new(["boaters", "boaster", "paste", "pates"])
        expect(an.show).to eql([["boaters", "boaster"], ["paste", "pates"]])
    end
  end

  describe '#get_word' do
    it "returns all words that are anagrams with the word 'paste' from given file" do
      an = Anagrams.new("anagrams-wordlist.txt")
      expect(an.get_word('paste')).to eql(["paste", "pates", "peats", "septa", "spate", "tapes", "tepas"])
    end
  end
end
