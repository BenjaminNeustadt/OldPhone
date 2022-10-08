
Letters = { "2" => 'A', "22" => 'B', "222" => 'C'}
LetterS = { "2" => 'A'}

def oldphone(str)
  if str.include?('*')
    str.slice! str[str.index('*') - 1]
  end
  result = str.scan(/0+|1+|2+|3+|4+|5+/).join
  Letters[result]
end

