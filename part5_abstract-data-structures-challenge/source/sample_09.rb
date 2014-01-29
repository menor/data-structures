#Describe
 
#Multimap is an Abstract Data Structure which allows the user to store multiple values for the same key. 
#This is done by utilizing a list, array, hash, or other data structure as the value for the key. 
#Multimap is similar to nested arrays but done with a hash as the main data storage structure.
 
#Implement
 
 
#Pseudo
#Use array to index each line
#find if word is in index
#IF word is in index, add to hash
#ELSE next
 
 
class Multimap
 
  def initialize (string)
    @array_of_string_by_sentence = string.downcase.split(".")
    @array_of_string_by_word = string.gsub(/[.,:;!?]/, ' ').downcase.split.uniq
    @hash_by_word = Hash.new{|word, locations| word[locations] = []}
  end

  def create_index
    @array_of_string_by_word.each do |word|
      0.upto(@array_of_string_by_sentence.length-1).each do |i|
        if @array_of_string_by_sentence[i].include? word
         @hash_by_word[word] << i + 1
        end 
      end
    end
  end

  def user_output(word_looking_for)
  word_looking_for_downcase = word_looking_for.downcase
  p "The word #{word_looking_for_downcase} appears in sentence(s) #{@hash_by_word[word_looking_for_downcase].join(' ')}" 
  end

end
 

puts "Enter your string:"
test_multimap = Multimap.new(gets.chomp)
puts "What is the word you are looking for?"
test_multimap.create_index
test_multimap.user_output(gets.chomp)


#Gettin' Real
 
#Let's pretend that we were learning Ruby from a book and it didn't have an index. We are having 
#difficulty finding the page that explains how to use "Hashes" and want to make sure we don't 
#waste a lot of time in the future when seraching for a specific topic. By using this data 
#structure, we can create an index of each word used in the book along with each page it can
#be located on.