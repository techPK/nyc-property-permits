class CorrectCommunityBoardName < ActiveRecord::Migration
  def change
    rename_column :permits, :community_board_intger, :community_board_integer		# 'Community Board'	Community - Board	# 'Community - Board'	Comm- Board
    rename_column :permit_details, :community_board_intger, :community_board_integer		# 'Community Board'	Community - Board	# 'Community - Board'	Comm- Board
  end
end
