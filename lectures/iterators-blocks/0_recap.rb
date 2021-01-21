#############
# On Arrays #
#############

# index ->         0               1            2                3
musicians = ["Robert Plant", "Jimmy Page", "John Bonham", "Jon Paul Jones"]

# Checking the size
musicians.count
musicians.size
musicians.length

# Creating
musicians.push("Katy Perry")
musicians << "Katy Perry"

# Reading
musicians[2]

# Update
musicians[2] = "Ozzy Osbourne"

# Remove
musicians.delete_at(0)
musicians.delete("John Bonham")

#############
# On Ranges #
#############

(1..10) # from 1 to 10, including 10
(1...10) # from 1 to 9
(1..5).to_a # [1, 2, 3, 4, 5]