require_relative '../lib/oldphone'

RSpec.describe 'OldPhone' do

  describe 'oldPhone' do

    xit 'translates a single digit to a letter' do
      expect(oldphone("2")).to eq "A"
    end

    xit 'translates double identical digit to a letter' do
      expect(oldphone("22")).to eq "B"
    end

    xit 'translates a triple identical digit to a letter' do
      expect(oldphone("222")).to eq "C"
    end

    it 'translates digits after removing character before *' do
      expect(oldphone("222*")).to eq "22*"
    end

    xit 'translates digits after removing character before *' do
      expect(oldphone("222*")).to eq "B"
    end

  end

end
