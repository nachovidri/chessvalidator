$board = 
[
	[:wQ, "--", "--", "--", "--", "--", "--", "--"],
	["--", "--", "--", "--", "--", "--", "--", "--"],
	["--", "--", "--", "--", "--", "--", "--", "--"],
	["--", "--", "--", "--", "--", "--", "--", "--"],
	["--", "--", "--", "--", "--", "--", "--", "--"],
	["--", "--", "--", "--", "--", "--", "--", "--"],
	["--", "--", "--", "--", "--", "--", "--", "--"],
	["--", "--", "--", "--", "--", "--", "--", "--"],
]

class ChessValidator

	def self.make_move
		@ini_pos = [0,0]
		@fin_pos = [3,3]
		chess_piece_sym = get_piece @ini_pos
		check_move chess_piece_sym

		# chess_piece = create_piece chess_piece_sym
		# chess_piece.validate_move ini_pos, fin_pos
	end

	def self.get_piece ini_pos
		piece = $board[ini_pos[0]][ini_pos[1]]
	end

	def self.check_move piece
		if piece == :wR
			Rook.validate_move @ini_pos, @fin_pos
		elsif piece == :wN

		elsif piece == :wB
			Bishop.validate_move @ini_pos, @fin_pos
		elsif piece == :wQ
			Queen.validate_move @ini_pos, @fin_pos
		elsif piece == :wK
		
		end
	end	

end

class ChessPiece
	
end

class Rook < ChessPiece
	
	def self.validate_move ini_pos, fin_pos
		if ini_pos[1] == fin_pos [1] || ini_pos[0] == fin_pos [0]
			puts "Good Rook move"
		else
			puts "Wrong Rook move"
		end
	end
end

class Bishop < ChessPiece
	
	def self.validate_move ini_pos, fin_pos
		if (ini_pos[0] - fin_pos [0]).abs == (ini_pos[1] - fin_pos [1]).abs
			puts "Good Bishop move"
		else
			puts "Wrong Bishop move"
		end
	end
end

class Queen < ChessPiece
	
	def self.validate_move ini_pos, fin_pos
		if (ini_pos[0] - fin_pos [0]).abs == (ini_pos[1] - fin_pos [1]).abs || ini_pos[1] == fin_pos [1] || ini_pos[0] == fin_pos [0]
			puts "Good Queen move"
		else
			puts "Wrong Queen move"
		end
	end
end

# ChessValidator.new
ChessValidator.make_move
