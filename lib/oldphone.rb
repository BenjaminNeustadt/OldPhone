require_relative 'transform.rb'

def oldphone(str)
  transform = Transform.new(str)
  transform.message_to_words(str)
end

