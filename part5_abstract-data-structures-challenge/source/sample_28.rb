# 1. Describe
# An associative array, map, or dictionary is a data structure that contains a 
# collection of unique (key, value) pairs. The major functions are add, reassign,
# remove and lookup.
 
# ------------
# 2. Implement
class UserAccountsDatabase
  attr_reader :database

  def initialize
    @database = {}
  end

  def add(username, password)
    if lookup(username) != nil
      "#{username} is not available" 
    else
      @database[username] = password
      "user account successfully created for #{username}"
    end
  end

  def reassign(username, password)
    if lookup(username) == nil
      "#{username} does not exist" 
    else
      @database[username] = password
      "password successfully changed for #{username}"
    end
  end

  def remove(username)
    if lookup(username) == nil
      "#{username} does not exist" 
    else
      @database.delete(username)
      "account for #{username} deleted"
    end
  end

  def lookup(username)
    password = @database[username]
  end
end

#Drive code
socrates_accounts = UserAccountsDatabase.new
puts socrates_accounts.add("SamSamskies", "password") # => user account successfully created for SamSamskies
puts socrates_accounts.add("Paulette", "1234") # => user account successfully created for Paulette
puts socrates_accounts.add("Amy", "sanfrancisco") # => user account successfully created for Amy
puts socrates_accounts.add("SamSamskies", "123") # => SamSamskies is not available 
puts socrates_accounts.lookup("SamSamskies") # => password
puts socrates_accounts.lookup("Paulette") # => 1234
puts socrates_accounts.lookup("Amy") # => sanfrancisco
puts socrates_accounts.lookup("Sherif").inspect # => nil
puts socrates_accounts.reassign("SamSamskies", "jkrwer93jmmi838") # => password changed for SamSamskie
puts socrates_accounts.lookup("SamSamskies") # => "jkrwer93jmmi838"
puts socrates_accounts.remove("Paulette") # => account for Paulette deleted
puts socrates_accounts.database # => {"SamSamskies"=>"jkrwer93jmmi838", "Amy"=>"sanfrancisco"}

 
# ------------
# 3. Get real
# A database of user account. Using the abstract data structure 
# simplifies things because it only contains a few operations that can be named
# whatever you want and is more intuitive to use than the underlying data structure.