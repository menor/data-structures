roster = [["Number", "Name", "Position", "Points per Game"],
         ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
         ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0] ],
         ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ],
         ["7", "Sally Talls", "Power Forward ", [18, 29, 26, 31, 19] ],
         ["22", "MK DiBoux ", "Small Forward ", [11, 0, 23, 17, 0] ]]

def convert_roster_format(roster)
  titles = roster.shift
  player_data = roster.shift
  #roster.map! { |player_data| titles.zip(player_data) }
  prepared_roster = titles.zip(player_data)
  p prepared_roster
  Hash(prepared_roster)
end





# DRIVER CODE
hashed_roster = convert_roster_format(roster)

hashed_roster[2]
# => { "Number" => 31, "Name" => "Harvey Kay", "Position" => "Shooting Guard", "Points per Game" => [0, 30, 16, 0, 25] }

# puts hashed_roster[0]["Name"] == "Joe Schmo"   # outputs true

