# Nested Arrays 2 Ruby For Conversion And Seeding

##Learning Competencies

* Generating nested arrays and hashes with ruby
* Using ruby's built-in methods to speed coding
* Researching Array and Hash methods
* Looping and conditions

##Summary

In this challenge, let's start creating some data structures and better understand what's going on under the hood with arrays and hashes.

A powerful way to create an array is using the `Array.new` class method.

```ruby
first_25_letters = ('A'..'Z').first(25)

letter_grid = Array.new(5) { first_25_letters.shift(5) }
# => [ ["A", "B", "C", "D", "E"],
#      ["F", "G", "H", "I", "J"],
#      ["K", "L", "M", "N", "O"],
#      ["P", "Q", "R", "S", "T"],
#      ["U", "V", "W", "X", "Y"] ]
```

Do you understand how the above code is working? If not, make a note to come back later so you understand passing blocks and the `shift` method.

##Releases

###Release 0 : Tic-tac-toe Revisited - Populating a Board

Take a look at the simple 2 dimensional array for Tic-Tac-Toe from Nested Arrays. Let's say we wanted to generate 10 sample boards with x's and o's. How would you do that? How do you make the x's and o's random? In the first iteration, it's OK to create boards that don't have logical ratio of x's and o's.

Write some driver code with a test to make sure your method is working, and your resultant array has 9 elements. What `Array` method would you use?

**Extra Credit:** Go ahead and populate a board with a realistic ratio of x's and o's. There should only be either 5 x's or 4 o's or vice versa. There's an enumerable method that works on arrays that can help you! How could you write a good driver code test to make sure the array has the right number of x's and o's?


###Release 1 : Convert nested array to hash

Ruby provides a handy `Hash::[]` method which will convert a properly formatted array into a hash. [Documentation](http://www.ruby-doc.org/core-1.9.3/Hash.html#method-c-5B-5D).

Convert each entry (player) from the data table array from the previous challenge (shown below) into a hash. You will need to write code that modifies the original array into the right format that the `Hash::[]` method expects to get the proper result.

```ruby
roster = [["Number", "Name", "Position", "Points per Game"],
         ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
         ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0] ],
         ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ],
         ["7", "Sally Talls", "Power Forward ", [18, 29, 26, 31, 19] ],
         ["22", "MK DiBoux ", "Small Forward ", [11, 0, 23, 17, 0] ]]
```

####Break It Down
Take a moment to read up in the [documentation](http://www.ruby-doc.org/core-1.9.3/Hash.html#method-c-5B-5D) to see the 3 formats that the `Hash::[]` method accepts.

Which format seems most convenient, given the nested array shown above? Test out the `Hash::[]` method with some test data in irb. How does your nested array need to change so it is the right format?

Create a method that can convert the nested array appropriately like so:

```ruby
def convert_roster_format(roster)
  # your code here
  # should return a new format of roster which is an array of hashes
end

hashed_roster = convert_roster_format(roster)
```

Now, you should have an array of hash objects, which will allow you to write driver code like this:

```ruby
hashed_roster[2]
# => { "Number" => 31, "Name" => "Harvey Kay", "Position" => "Shooting Guard", "Points per Game" => [0, 30, 16, 0, 25] }

puts hashed_roster[0]["Name"] == "Joe Schmo"   # outputs true
```

Write some more driver code to test your new array of hashes!

