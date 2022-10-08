require_relative '../lib/oldphone'

RSpec.describe 'OldPhone' do

  describe 'oldPhone' do

    it 'translates a single digit to a letter' do
      expect(oldphone("2")).to eq "A"
    end

    it 'translates a single digit to a letter' do
      expect(oldphone("22")).to eq "B"
    end

  end

end
