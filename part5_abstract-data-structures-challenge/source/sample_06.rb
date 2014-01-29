# 1. Describe

# A container is an instance of collections of various other objects.
# There are two main types; value-based and reference based. The latter refering to the fact that if a change
# is made to an object, even after it has been placed into another container, that change is still reflected.


# ------------
# 2. Implement

# irb(main):014:0> array = (1..10).to_a
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# irb(main):015:0> array
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# irb(main):016:0> array2 = array
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# irb(main):017:0> array.push(11)
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

# irb(main):018:0> array2
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]



# ------------
# 3. Get real

# In a situation where programs must run optimally and minimalistically, if data is going to be repeated, it's logical
# that the data need only exist once and be referenced unless specifically requested to be duplicated. By operating
# this way, ruby is inherintly a lightweight language.