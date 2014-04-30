chessboard = Array.new(8) { Array.new(8, 'empty') }
pieces = %w(Rook Horse Bishop Queen King Bishop Horse Rook)
chessboard[0].map!.with_index {|content, index| "B #{pieces[index]}"}
chessboard[1].map!.with_index {|content, index| "B Pawn"}
chessboard[6].map!.with_index {|content, index| "W Pawn"}
chessboard[7].map!.with_index {|content, index| "W #{pieces[index]}"}

puts chessboard[7][0] == "W Rook"    # outputs true