# 1. Describe
# A multimap is a type of data structure that has more than one value associated with a single key. 

# ------------
# 2. Implement
#The implementation of MultiMap includes primary functions for the structure, such as adding a value to an existing key, 
# deleting a value from a certain key, adding a key with multiple values, and iteration through the entire MultiMap. 
class MultiMap

include Enumerable 

  def initialize
    @hash = {}
  end

  def []=(key,*values)
    @hash.has_key?(key) ? @hash[key] += values : @hash[key] = values.flatten
  end  

  def [](key)
    @hash[key]
  end
  
  def each
    @hash.each do |key,values|
      yield(key,values)
    end
  end  

  def to_s
    @hash.inspect
  end

  def delete_at(key,value)
    @hash[key].delete(value)
  end

  def delete(key)
    @hash.delete(key)
  end

end
#Initialize a new multimap
music_recommendations = MultiMap.new
#Add a key with values
music_recommendations["Pink Floyd"] = "Pyschodelic Rock", "60s"
#Add a value to an existing key
music_recommendations["Pink Floyd"] = "Chillout"
#Add another set of key and values
music_recommendations["Portishead"] = "Trip hop" , "Chillout", "Sexy"
# Delete a value from a key
music_recommendations.delete_at("Portishead","Trip hop")
#Delete a whole key
music_recommendations.delete("Portishead")
#Iterate through a multimap
music_recommendations.each {|key,values| puts "#{key},#{values}"}

# ------------
# 3. Get real
# To figure out music recommndations based on tags, a multimap can be used. The keys would be the name of the artist,
# and the values can be the different "tags" based on what users think that music represents. A more deep implementation of 
# the Class would include things like not having the same values for music, obtaining all the type of music associated with a tag, etc.
#