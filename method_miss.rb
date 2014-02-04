class User
  def initialize(name)
    @name = name
  end

  def method_missing(method, *args)
    if method.to_s =~ /^get_(.+)$/
      self.define_singleton_method(method) do
        instance_variable_get :"@#{$1}"
        end
        send method
    elsif method.to_s =~ /^set(.+)$/
      self.define_singleton_method(method) do |value|
        instance_variable_set :"@#{$1}", value
      end
      send method, args[0]
    else
      super
    end
  end
end



# class Numeric
#   @@currencies = { 'yen' => 0.013, 'euro'=> 1.292}

#   def method_missing(method_id, *args, &block)
#     singular_currency - method_id.to_s.gsub


# end