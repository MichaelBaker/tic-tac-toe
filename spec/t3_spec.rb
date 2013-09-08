require 't3.rb'

describe TicTacToeGame do
  describe "#draw?" do
    it "fails to detect a draw in the event of a win" do
      game = TicTacToeGame.new
      game.instance_variable_set("@open_spots", [])
      game.instance_variable_set("@opponent",   [0, 1, 2, 6, 7])
      game.instance_variable_set("@computer",   [3, 4, 5, 8])
      game.draw?.should == false
    end
  end
end
