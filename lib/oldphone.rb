
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

def oldphone(str)
  transform = Transform.new(str)
  transform.message_to_words(str)
end

class Transform

  def initialize(input)
    @input = input
  end

  def message_to_words(str)
    result = str.scan(/0+|1+|2+|3+|4+|5+|6+|7+|8+|9+|\*/)
    while result.include? '*'
      result.delete_at(result.index('*') - 1)
      result.delete_at(result.index('*'))
    end
    translation = result.map {|digit_input| Letters[digit_input]}
    translation.join
  end

end
