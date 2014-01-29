# 1. Describe-Set
=begin
A set is a list that has no particular order and has no repeating values.  Since there is no
order, one cannot index the values in the list.  One can check to see if a value exists in a set but that one cannot print
all the values in the set.  One can compare two sets to each other, but cannot see what values are in either
It should also be noted that sets have a finite size.  
One can also merge sets together or add new elements to a set but remember there are no repeating values.    
**Remember one cannot grab a value from a set.  One can only check to see if a value exists in a set.
=end
# ------------

# 2. Implement-Set
class Set
  def initialize(size=10)
		@store = []
		@size = size
	end

	def merge(list)
		@store += list
		@store.uniq!
	end

	def add(*obj)
		@store << obj
		@store.flatten!.uniq!
	end

	def subset?(set)
		set.each do |e|
			if !@store.include?(e)
				return false
			end
		end
		true
	end

	def include?(obj)
		@store.include?(obj)
	end
end

set1 = Set.new
p set1.add(1) == nil
p set1.merge([3,5]) == nil
p set1.subset?([1,2]) == false
p set1.subset?([1,3]) == true
p set1.include?('a') == false
p set1.include?(1) == true
 
# ------------

# 3. Get real-Set
=begin
	
If I were to design the game 'Guess Who?' I could use a set.
Each player makes their own set that has all the properties of the chosen character.
The other player guesses a property and it will return true if it is in the other players set.
The true values can be kept in a list so that one player can view what he/she has checked.

=end