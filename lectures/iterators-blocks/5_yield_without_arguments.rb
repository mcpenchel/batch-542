def timer
  start_time = Time.now
  yield # all the code from the block gets executed in here
  puts "Total time to compute: #{Time.now - start_time}"
end

timer do
  array = (1..100_000).to_a
  array.shuffle
  array.sort
  array.shuffle
  array.shuffle
  array.sort
end

timer do
  puts "I'm doing something complex that takes time..." # not really, we're pretending
  sleep(4) # tells ruby to sleep for 4 seconds
  puts "Finished doing something complex"
end