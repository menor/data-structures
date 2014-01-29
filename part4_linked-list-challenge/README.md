# Data Drill Linked List

##Learning Competencies
* Understand the types of data structures.
* Implement the Linked List data structures in Ruby.
* Determine when to use a particular data structure.

##Summary

Now that you've spent some time learning about abstract data structures and implementing a stack and a queue, let's look at another useful data structure, the *linked list*.

A linked list is  data structure consisting of a group of nodes which together represent a sequence. Under the simplest form, each node is composed of a datum and a reference (in other words, a link) to the next node in the sequence; more complex variants add additional links. This structure allows for efficient insertion or removal of elements from any position in the sequence.

The principal benefit of a linked list over a conventional array is that the list elements can easily be inserted or removed without reallocation or reorganization of the entire structure because the data items need not be stored contiguously in memory or on disk.

On the other hand, simple linked lists by themselves do not allow random access to the data, or any form of efficient indexing. Thus, many basic operations–such as obtaining the last node of the list (assuming that the last node is not maintained as separate node reference in the list structure), or finding a node that contains a given datum, or locating the place where a new node should be inserted–may require scanning most or all of the list elements.

##Releases

###Release 0 : Implement a Linked List with an Array

Implement a Linked List class using an Array. Write a script to test out your class, be sure you can add and remove items and determine if a list is empty.

Upload your Linked List class and the script to the file `linked_list_array.rb`.

###Release 1 : Implement a Queue with a Linked List
You're really moving now. One of the benefits of a linked list is it makes it easier to implement a stack or a queue because you don't have to restrict the size.

Use your linked list class (instead of an array) to implement the queue class. Be sure you can push, pop and perform all the other operations that you could in your array based implementation. Use the same script you wrote to test the Queue with Array class from the previous challenge to test out this class.

Upload your Queue with Linked List class and the script to the file `linked_list_queue.rb`


##Resources
- [Linked List on Wikipedia](http://en.wikipedia.org/wiki/Linked_list)
