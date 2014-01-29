# 1. Describe
#I'm going to talk about the Tree ADS. A tree structure can be thought of recursively if you start from the node, or trunk as
#I like to think of it. I visualize the tree ADS as, well a tree. The first node is the trunk where all of the other branches
#and limbs grow from. Each time the tree splits of to another set of branches, it represents a node. Each branch leads eventually 
#to leaves, which are like the final children that have no children themselves. Like the tree ADS, you can graft on new 
#limbs of an apple tree onto an orange tree, if you have the right tool you can chop off limbs, and a whole bunch of other 
#ways to manipulate your tree. Also, when you're inputting your information, it looks like a tree. The final node will be at 
#the bottom. 

# ------------
# 2. Implement
This explains when I meant by the original node is at the bottom. 
phase3 = ["more people"]
phase2 = ["some", "people"]
phase1 = ["Ben", "Nate", "Molly"]
groups = [phase1, phase2, phase3]

teachers = ["Brick", "Jen"]
dev_bootcamp = [teachers, groups]

p groups
puts
p teachers 
puts
p dev_bootcamp
=> [["Ben", "Nate", "Molly"], ["some", "people"], ["more people"]]

=> ["Brick", "Jen"]

=> [["Brick", "Jen"], [["Ben", "Nate", "Molly"], ["some", "people"], ["more people"]]]
                                               Dev Bootcamp
                         _________________________|_________________________  
                        |                                                   |
                   Teachers                                              Phases
                        |                                                   |
             ___________|_____________                    __________________|_____________  
            |                         |                  |                  |             |
       Brick                         Jen               Phase 1          Phase 2        Phase 2
                                                  _______|__________     ___|___          |
                                                "Ben", "Nate"  "Molly"  |       |    "More People"
                                                                     "some"   "People"
# ------------
# 3. Get real

so the way that I view and use the boggle board is:
Board = [row1,row2,row3,row4]
row1 = [random_die, random_die, random_die, random_die]
row2 = [random_die, random_die, random_die, random_die]
row3 = [random_die, random_die, random_die, random_die]
row4 = [random_die, random_die, random_die, random_die]

Dice = [die1..die16]
die = [side1..side6]

I view the board as the trunk, or initial node. The board has 16 children nodes called boxes. 
Each box has 16 potential children which are dice. Each die has 6 children called sides. 

die1  = ['A','A','E','E','G','N']
    die2  = ['E','L','R','T','T','Y']
    die3  = ['A','O','O','T','T','W']
    die4  = ['A','B','B','J','O','O']
    die5  = ['E','H','R','T','V','W']
    die6  = ['C','I','M','O','T','U']
    die7  = ['D','I','S','T','T','Y']
    die8  = ['E','I','O','S','S','T']
    die9  = ['D','E','L','R','V','Y']
    die10 = ['A','C','H','O','P','S']
    die11 = ['H','I','M','N','Q','U']
    die12 = ['E','E','I','N','S','U']
    die13 = ['E','E','G','H','N','W']
    die14 = ['A','F','F','K','P','S']
    die15 = ['H','L','N','N','R','Z']
    die16 = ['D','E','I','L','R','X']
    boggle_dice = [die1, die2, die3, die4, die5, die6, die7, die8, die9, die10, die11, die12, die13, die14, die15, die16]
    boggle_roll = boggle_dice.sample(16)

p boggle_roll
boggle_board = []
boggle_roll.each{|die| boggle_board << die.sample()}
puts
p boggle_board


The dice fell to the board in order of: 
[["E", "I", "O", "S", "S", "T"], ["D", "E", "I", "L", "R", "X"], ["E", "E", "G", "H", "N", "W"], ["A", "A", "E", "E", "G", "N"], 
["C", "I", "M", "O", "T", "U"], ["D", "E", "L", "R", "V", "Y"], ["A", "F", "F", "K", "P", "S"], ["H", "L", "N", "N", "R", "Z"],
["H", "I", "M", "N", "Q", "U"], ["E", "L", "R", "T", "T", "Y"], ["E", "H", "R", "T", "V", "W"], ["A", "O", "O", "T", "T", "W"], 
["A", "B", "B", "J", "O", "O"], ["A", "C", "H", "O", "P", "S"], ["D", "I", "S", "T", "T", "Y"], ["E", "E", "I", "N", "S", "U"]]

And they rolled ["I", "E", "N", "E", "C", "R", "K", "R", "H", "T", "W", "W", "A", "P", "I", "E"]

Your final board is [["U", "T", "R", "I"], 
                     ["J", "W", "E", "Y"], 
                     ["F", "P", "I", "E"], 
                     ["A", "T", "L", "E"]]
