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

    it 'translates digits after removing character before *' do
      expect(oldphone("222*")).to eq ""
    end

    it 'can translate three letters on same digit' do
      expect(oldphone("2 22 222")).to eq "ABC"
    end

    it 'can translate whole alphabet' do
      expected = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
      actual = oldphone("2 22 2223 33 3334 44 4445 55 5556 66 6667 77 777 77778 88 8889 99 999 9999")
      expect(actual).to eq(expected)
    end

    it 'can translate with spaces' do
      expect(oldphone("44 33 555 555 6660 6 666 8 666")).to eq "HELLO MOTO"
    end

    it 'can translate with punctuation' do
      expect(oldphone("223366010533777 777999117777")).to eq "BEN & JERRY'S"
    end

  end

end
