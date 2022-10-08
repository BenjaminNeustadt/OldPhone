require_relative '../lib/oldphone'

RSpec.describe 'OldPhone' do

  describe 'oldPhone' do

    it 'translates a single digit to a letter' do
      expect(oldphone("2")).to eq "A"
    end

    it 'translates double identical digit to a letter' do
      expect(oldphone("22")).to eq "B"
    end

    it 'translates a triple identical digit to a letter' do
      expect(oldphone("222")).to eq "C"
    end

  end

end
