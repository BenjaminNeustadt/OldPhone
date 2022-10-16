require_relative 'transform.rb'

def oldphone(str)
  Transform.new(str).to_s
end

