module RegularExpressions
  module Dictionary
  RegularExpression = {
    repeating_digits: /0+|1+|2+|3+|4+|5+|6+|7+|8+|9+|\*/
  }
  end
end

class Transform
  include RegularExpressions::Dictionary

  Keypad_Morpheme = {
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

  RE = RegularExpression
  private_constant :RE

  private

  attr_reader :message

  def initialize(encoded_message)
    @message = encoded_message.scan(RE[:repeating_digits])
    deletions
  end

  def deletions
    while message.include? '*'
      message.delete_at(message.index('*') - 1)
      message.delete_at(message.index('*'))
    end
  end

  def translate
    message.each_with_object('') do |encoding, memo|
      memo << Keypad_Morpheme[encoding]
    end
  end

  public

  def to_s
    translate
  end

end

# Library Guard
if $0 == __FILE__
  puts Transform.new('22 28')
end
