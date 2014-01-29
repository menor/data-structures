# 1. Describe

# I choose the multimap data structure.  
# It gathers many related values and sorts them by giving each set of values a key. 
# In essence it is a hash with arrays as values.


# ------------
# 2. Implement

student = Hash.new
student['Mike'] = ['Math', 'P.E.']
student['John'] = ['English', 'Social Studies']
student['Carl'] = ['Lunch', 'Recess']

student.each do |student, subject|
  puts "#{student}'s second subject is #{subject[1]}"
end

# ------------
# 3. Get real

# This is convinient in describing the attributes of the key.
# For instance an athlete's stats or the classes a student is registered for.