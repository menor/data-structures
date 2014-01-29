# 1. Describe
# The Set data structure is described in the Ruby docs as a hybrid
# of Hash and Array. It is like the Hash in that entries (at least keys,
# in Hash's case) must be unique. However unlike hashes, sets do not
# contain key/value pairs, and exist primarily for ensuring uniqueness
# of its entries. Like a Hash, entries cannot be accessed using indices.
# Sets are not ordered; converting to an array will not ensure the same ordering.

# ------------
# 2. Implement

# Implement
# Implement the data structure and its primary functionality using
# either an array or hash.

require 'set'
# The set datatype can be implemented using the set module.

snowflakes = Set.new

snowflakes.add("really unique entry")  # => <Set: {"really unique entry"}>
snowflakes.add("really unique entry")  # => <Set: {"really unique entry"}>
snowflakes.empty? #=> false

# Once the set module has been imported, sets can be created from arrays

states = ["New York", "Vermont", "Wyoming"].to_set # => <Set: {"New York", "Vermont", "Wyoming"}
states << "Virginia"  # => <Set: {"New York", "Vermont", "Wyoming", "Virginia"}>
#Like arrays, you can "shovel" entries into a set.

# If we were to create our own Set class, it might look like this:
class CustomSet

  def initialize
    @store = []
  end

  def add(x)
    @store << x if @store.include?(x) == false
  end

  def clear
    @store = []
  end

  def to_a(x)
    x.to_a
  end

  def length
    x.length
  end

  def include(x)
    x.include?
  end

  def empty?
    @store.empty?
  end

  def delete(x)
    @store.delete(x)
  end
end

set = CustomSet.new

puts set.empty? # => true
set.add("My unique entry")
set.add("My unique entry") # does NOT add a new entry
set.add(34) # like arrays, sets can include entries from multiple datatypes
set.length  # => 2
set.clear   # => returns a blank "set" with same name
set.add("bumblebee")
set.delete("bumblebee")  # => specific entries can be reached and deleted

# ------------
# 3. Get real

# A set might prove to be a useful data structure if uniqueness of entries
# was the data's most important attribute, and the key/value functionality
# of a hash wouldn't be needed. For instance, imagine two lists of user IDs
# that were the result of two database queries. (Perhaps both lists represent
# users who want to receive updates, and we want to make sure to weed out
# duplicates so we won't spam our loyal customers.) Combining two arrays could work,
# but we'd still need to call Array#uniq every time we merged the data. A hash
# would be overkill; all we need for our database is the User IDs.

# Enter CustomSet; add both sets of User IDs together, and voila, you
# have one list of all User IDs, filtered for duplicates.
