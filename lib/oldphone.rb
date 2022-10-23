require_relative 'transform.rb'

def oldphone(encoded_message)
  Message.new(encoded_message).to_s
end

