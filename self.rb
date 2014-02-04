class User
  attr_accessor :name

  def initialize
      @name = 'Casey'
  end
  
  def say_name
    puts name
  end

  def set_name
    self.name = name
  end


end


me = User.new 'casey'
puts user.say_name

# puts me.whoami.inspect

# # puts me.whoami == me