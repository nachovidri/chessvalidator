require "pry"
# board = 
# [
# 	[:wQ, "--", "--", "--", "--", "--", "--", "--"],
# 	["--", "--", "--", "--", "--", "--", "--", "--"],
# 	["--", "--", "--", "--", "--", "--", "--", "--"],
# 	["--", "--", "--", "--", "--", "--", "--", "--"],
# 	["--", "--", "--", "--", "--", "--", "--", "--"],
# 	["--", "--", "--", "--", "--", "--", "--", "--"],
# 	["--", "--", "--", "--", "--", "--", "--", "--"],
# 	["--", "--", "--", "--", "--", "--", "--", "--"],
# ]

class ChessValidator

	def self.make_move board
		@ini_pos = [0,0]
		@fin_pos = [3,0]
		chess_piece_sym = get_piece @ini_pos, board
		check_move chess_piece_sym.to_sym

		# chess_piece = create_piece chess_piece_sym
		# chess_piece.validate_move ini_pos, fin_pos
	end

	def self.get_piece ini_pos, board
		piece = board[ini_pos[0]][ini_pos[1]]
	end

	def self.check_move piece
		# binding.pry
		if piece == :bR
			Rook.validate_move @ini_pos, @fin_pos
		elsif piece == :bN

		elsif piece == :bB
			Bishop.validate_move @ini_pos, @fin_pos
		elsif piece == :bQ
			Queen.validate_move @ini_pos, @fin_pos
		elsif piece == :bK
		
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

class FileManager

	def self.read_file file_name
		IO.readlines file_name
	end

	def self.write

	end
end

class ChessBoard
	attr_accessor :board

	def initialize
		@board = process_array
	end

	def process_array
		board_rows = FileManager.read_file "simple_board.txt"
		board_rows.map do |row|
			row = row.split(' ')
		end
	end	

end


chessboard = ChessBoard.new

# board = board.map do |row|
# 	row.split(' ')
# end

# print board.board

ChessValidator.make_move chessboard.board





