
Letters = {
  "1"    => '&',
  "11"   => "'",
  "111"  => '(',
  "0"    => ' ',
  "2"    => 'A',
  "22"   => 'B',
  "222"  => 'C',
  "3"    => 'D',
  "33"   => 'E',
  "333"  => 'F',
  "4"    => 'G',
  "44"   => 'H',
  "444"  => 'I',
  "5"    => 'J',
  "55"   => 'K',
  "555"  => 'L',
  "6"    => 'M',
  "66"   => 'N',
  "666"  => 'O',
  "7"    => 'P',
  "77"   => 'Q',
  "777"  => 'R',
  "7777" => 'S',
  "8"    => 'T',
  "88"   => 'U',
  "888"  => 'V',
  "9"    => 'W',
  "99"   => 'X',
  "999"  => 'Y',
  "9999" => 'Z',
  }

class OldPhone

  attr_reader :digit_input
  attr_writer :oldphone

  def initiliaze(digit_input)
    @digit_input = digit_input
  end

  def oldphone(str)
    if str.include?('*')
      self.digit_input.slice! str[str.index('*') - 1]
    end
    result = self.digit_input.scan(/0+|1+|2+|3+|4+|5+|6+|7+|8+|9+/)
    translation = result.map {|digit_input| Letters[digit_input]}
    print_out(translation.join)
  end

  public

  attr_reader :execute,
              :print_out

  def execute(digit_input)
    oldphone(digit_input)
  end

  def print_out(translated)
    puts translated
  end

end

