=begin

A set is a collection of unordered elements with no duplicates. The set is primarily used
for quick reference to see if an element is contained in the set. The set can also handle
many enumerable methods, and can be compared for equality. In addition, the set can contain 
subsets, and has a method for checking subsets and supersets.
  
=end

class MySet
  attr_reader :array

  def initialize(array)
    @array = array
    @array.uniq!
  end

  def sub_set?(super_array)
    super_array.include?(@array)
  end

  def super_set?(sub_array)
    @array.include?(sub_array)
  end

end

the_set = MySet.new([1,2,3,6,5,4,2,5,6,3,6,8,6, 'apple', 'cherry', 'apple'])
p the_set.sub_set?([1,4,7,23]) == false

nested_array = MySet.new([1,2,3,['a','b','c'],1,2,3])
p nested_array.array == [1, 2, 3, ["a", "b", "c"]]
p nested_array.sub_set?([3,544,'apple']) == false
p nested_array.super_set?(['a','b','c']) == true

=begin

Imagine a researcher tracking languages and dialects. While surveying, many people will
have the same dialect. The researcher can use a set to gather all unique dialects in an area.
The researcher could use a superset of languages which each contain their particular
set of dialects. The researcher could then use another superset for a region which contains
sets of languages.

=end

