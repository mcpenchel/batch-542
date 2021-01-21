def beautified_name(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name) # whatever is the value of the full_name variable, that's what is sent as a block variable
end

beautified_name("matheus", "penchel") do |beautiful_name| # <- beautiful_name is the block variable
  puts "Greetings, my good friend #{beautiful_name}"
end