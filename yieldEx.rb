def run_stuff(&block)
  puts 'Starting the method'
  yield
  puts 'Ending the method'
end

run_stuff {puts 'Inside the method'}