# 1. Describe
# SET: A set is a data structure of a bunch of non-repeating items. 
 
# ------------
# 2. Implement
 array = ["Berkeley","San Francisco","Oakland","Oakland", "Mountain View"]
 set = array.uniq

 set.include?("Atherton")
 
# ------------
# 3. Get real

# You might want to use set when you want to perform a check when
# adding a new item to a database to see if it exist already or not. For
# example, a list of cities. For this purpose, it doesn't matter how many times that 
# city appears in the database, or the exact order in which is appears. 