require_relative '../lib/oldphone'

RSpec.describe 'OldPhone' do

  describe 'oldPhone' do

    it 'translates a single digit to a letter' do
      expect(oldphone("2")).to eq "A"
    end

  end

end
