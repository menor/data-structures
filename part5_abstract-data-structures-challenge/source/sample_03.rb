# 1. Describe
# An associative array is a data structure abstracted from a hash. It allows for additions of key,hash pairs.
# You can also reassign new values to existing keys. #It also allows for remove a key,value pair by just supplying the key.
# A lookup functionality is present in an associative array data structure, where providing a key returns the corresponding value.
# If that key is not present in the associative array then often a error will be raised.

# ------------
# 2. Implement

class AssociativeArray

  def initialize
    @store = {}
  end

  def empty?
    @store.empty?
  end

  def add(key, value)
    @store[key] = value
  end

  def reassign(key, value)
    raise "That key is not in the Associative Array" if @store.has_key?(key) == false 
    @store[key] = value
  end

  def remove(key)
    @store.delete(key)
  end

  def lookup(key)
    raise "That key is not in the Associative Array" if @store.has_key?(key) == false  
    @store[key]
  end

end

my_associative_array = AssociativeArray.new

puts "The Associative Array is empty? #{my_associative_array.empty?}"

my_associative_array.add("Name", "Fab")
my_associative_array.add("Country of Birth", "Australia")
my_associative_array.add("Hometown", "Melbourne")
my_associative_array.add("Favourite City", "New York")

puts my_associative_array.lookup("Favourite City")

my_associative_array.reassign("Favourite City", "London")

puts my_associative_array.lookup("Favourite City")

my_associative_array.remove("Favourite City")

my_associative_array.reassign("Favorite City", "San Francisco") # spelling mistake => should say that key doesn't exist

puts my_associative_array.lookup("Favourite City")

# ------------
# 3. Get real

#Here's a real sitatuation where you could use an associative array:
#A hospital where patients are respresented with keys. Nurses and doctors are assigned to patients as values.
#Each time the doctor or nurse looking after a patient changes, the new one can be reassigned.
#Patients are unique but the one doctor or nurse may be assigned to multiple patients.
#Once patients check out of the hospital their name is taken off the record and that key/pair value is removed.
