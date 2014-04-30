roster = [["Number", "Name", "Position", "Points per Game"],
         ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
         ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0] ],
         ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ],
         ["7", "Sally Talls", "Power Forward ", [18, 29, 26, 31, 19] ],
         ["22", "MK DiBoux ", "Small Forward ", [11, 0, 23, 17, 0] ]]

def convert_roster_format(roster)
  titles = roster.shift
  hashed_roster = []
  roster.map! { |player_data| titles.zip(player_data) }
  roster.each_index {|i| hashed_roster << Hash[roster[i]]}
  hashed_roster
end





# DRIVER CODE
hashed_roster = convert_roster_format(roster)
p hashed_roster[2] # { "Number" => 31, "Name" => "Harvey Kay", "Position" => "Shooting Guard", "Points per Game" => [0, 30, 16, 0, 25] }


puts hashed_roster[0]["Name"] == "Joe Schmo"   # outputs true

