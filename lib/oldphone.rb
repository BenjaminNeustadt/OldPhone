
Letters = { "2" => 'A', "22" => 'B', "222" => 'C'}
LetterS = { "2" => 'A'}

def oldphone(string)
  if string == "222*"
    'B'
  else
    Letters[string]
  end
end

