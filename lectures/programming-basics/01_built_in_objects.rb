# String - identify it by seeing quotes '' ""
"Mastodon"
"Mastodon".upcase # "MASTODON"
"Mastodon".downcase # "mastodon"

# We can only interpolate inside double quotes strings ("")
first_name = "Matheus"
"Hi people, my name is #{first_name}"

# Integer
50 / 2  # 25
50.to_s # "50"
50.odd? # false
50.even? # true
50.positive? # true
50.negative? # false

# Float
50.5
50.5.round # 51
50.1.round # 50

# Array
[]
[5, 3, 6].sort # [3, 5, 6]

# Range
(1..10) # from 1 to 10
(1...10) # from 1 to 9
(1..5).to_a # [1, 2, 3, 4, 5]

# Special values
true  # boolean
false # boolean
nil   # absence of value