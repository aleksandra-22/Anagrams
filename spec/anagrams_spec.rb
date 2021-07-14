require_relative "../lib/anagrams"

RSpec.describe Anagrams do
    describe '#get_anagrams' do
        
        it "returns all anagrams from a file" do
            an = Anagrams.new("test.txt")
            expect(an.get_anagrams).to eq({"abeorst"=>["boaster", "boaters"], "aepst"=>["paste", "pates"], "eefhrrs"=>["fresher", "refresh"]})
        end
    end

end
