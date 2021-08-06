require_relative "../lib/anagrams"

RSpec.describe Anagrams do
  describe '#show' do
    it "returns all anagrams from a file" do
      an = Anagrams.new("test.txt")
        expect(an.show).to eql([["boaster", "boaters"], ["paste", "pates"], ["fresher", "refresh"]])
    end
  end

  describe '#get_anagrams' do
    it "returns all words that are anagrams with the word 'paste' from given file" do
      an = Anagrams.new("anagrams-wordlist.txt")
      expect(an.get_anagrams('paste')).to eql(["paste", "pates", "peats", "septa", "spate", "tapes", "tepas"])
    end
  end
end
