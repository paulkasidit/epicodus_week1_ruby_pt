require('rspec') 
require('rock_paper_scissors') 



describe Game do 
  #intialize
  describe('.intialize') do
    it("return player1_log as an empty array ") do
      game1 =  Game.new("Lucy","Bob")
      expect(game1.player1_log.class).to(eq(Array)) #Lucy 
      end
    end
  describe('.intialize') do
    it("return chances as an integer") do
      game1 =  Game.new("Lucy","Bob")
      expect(game1.chances.class).to(eq(Integer)) #Lucy 
      end
    end
  describe('.intialize') do
    it("return player1 as a string") do
      game1 =  Game.new("Lucy","Bob")
      expect(game1.player1.class).to(eq(String)) #Lucy 
      end
    end
  describe('.intialize') do
    it("return player1 as a string") do
      game1 =  Game.new("Lucy","Bob")
      expect(game1.player1_points.class).to(eq(Integer)) #Lucy 
      end
    end
  
  #
  
  #decrement_chances 
  describe('.decrement_chances') do
    it("will decrement chances property in Games object by 1") do
      game1 =  Game.new("Lucy","Bob")
      expect(game1.decrement_chances()).to(eq(2)) #Lucy 
      end
    end
  
  #increment_points 
  describe('.increment_points') do
    it("will increment points property in Games object by 1") do
      game1 =  Game.new("Lucy","Bob")
      expect(game1.increment_points(game1.player1_points)).to(eq(1)) #Lucy 
      end
    end
  
  #push_player_array 
  describe('.push_player_array') do
    it("will push to player array property in Games object by 1") do
      game1 =  Game.new("Lucy","Bob")
      expect(game1.push_player_array("Scissor",game1.player1_log)).to(eq(["Scissor"])) #Lucy 
      end
    end

end