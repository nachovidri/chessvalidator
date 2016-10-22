$board = 
[
	[:wR, "--", "--", "--", "--", "--", "--", "--"],
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
		ini_pos = [0,0]
		fin_pos = [0,3]
		chess_piece_sym = get_piece ini_pos
		chess_piece = create_piece chess_piece_sym
		chess_piece.validate_move ini_pos, fin_pos
	end

	def self.get_piece ini_pos
		$board[ini_pos[0]][ini_pos[1]]
	end

	def self.create_piece piece
		if piece == :wR
			Rook.new
		elsif piece == :wN

		elsif piece == :wB
			Bishop.new
		elsif piece == :wQ

		elsif piece == :wK
		
		end
	end	

	end

class ChessPiece
	
end

class Rook < ChessPiece
	
	def validate_move ini_pos, fin_pos
		if ini_pos[1] == fin_pos [1] || ini_pos[0] == fin_pos [0]
			puts "Good Rook move"
		else
			puts "Wrong Rook move"
		end
	end
end

class Bishop < ChessPiece
	
	def validate_move ini_pos, fin_pos
		if (ini_pos[0] - fin_pos [0]).abs == (ini_pos[1] - fin_pos [1]).abs
			puts "Good Bishop move"
		else
			puts "Wrong Bishop move"
		end
	end
end

# ChessValidator.new
ChessValidator.make_move
