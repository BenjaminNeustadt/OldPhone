
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

  public

  def message_to_words(str)
    arranged = sort(str)
    revised = check_for_deletions(arranged)
    translate(revised)
  end

  def initialize(input)
    @input = input
  end

  private

  def translate(collection)
    collection
      .map {|digit_input| Letters[digit_input]}
      .join
  end

  def sort(str)
    str.scan(/0+|1+|2+|3+|4+|5+|6+|7+|8+|9+|\*/)
  end

  def check_for_deletions(input)
    while input.include? '*'
      input.delete_at(input.index('*') - 1)
      input.delete_at(input.index('*'))
    end
    input
  end

end
