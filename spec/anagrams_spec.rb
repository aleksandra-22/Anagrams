require_relative "../lib/anagrams"

RSpec.describe Anagrams do
  describe '#to_s' do
    it "returns all anagrams from a file" do
      an = Anagrams.new("test.txt")
        expect(an.get_anagrams).to eq({"abeorst"=>["boaster", "boaters"], "aepst"=>["paste", "pates"], "eefhrrs"=>["fresher", "refresh"]})
      end

    it "returns all anagrams from an array" do
      an = Anagrams.new(["boaters", "boaster", "paste", "pates"])
        expect(an.get_anagrams).to eql({"abeorst"=>["boaters", "boaster"], "aepst"=>["paste", "pates"]})
      end
  end
end
