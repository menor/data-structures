# 1. Describe

# A multimap is a data structure that maps a single key to multiple values.
# It can be used for keeping track of (for example) all the locations where a
# particular word appears in a  text file

# Because Multimap has Hash as it's parent, all the of normal hash functions will work as-is
# for Multimap objects.  It's not necessary to reimplement them within this sub-class.

# ------------
# 2. Implement
class Multimap < Hash

  def insert(key, value)
    (self[key] ||= []).push(value)
  end

end


# ------------
# 3. Get real

map = Multimap.new
file = "multimap.txt"
words = File.read(file).split
words.each_with_index  { |word, index| map.insert(word, index) }

print "The word 'type' appears #{map["type"].length} times at locations #{map["type"]} in file #{file}\n"
# p map
print "The word 'the' appears at the following locations: #{map.fetch("the")}\n" # an inherited Hash method.  Returns all indicies for word "the"
p map.has_key?("Multimap")  # inherited.  Does the word "Multimap" appear in the hash?
