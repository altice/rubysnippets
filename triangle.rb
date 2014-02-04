user_input = ARGV.first.to_i


# def get_user_input
#   print "Enter your first name "
#   user_input = gets.chomp
  
# end

# user_input = get_user_input.to_i

1.upto(user_input) do |i|
  1.upto(i) do |x|
    print x.to_s + ' '
  end
  puts
end



