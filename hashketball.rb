require 'pry'

def game_hash
	hash = {
		:home => {
			:team_name => "Brooklyn Nets",
			:colors => ["Black","White"],
			:players => [
								{:player_name => "Alan Anderson",
								:number => 0,
								:shoe => 16,
								:num_points_scored => 22,
								:rebounds => 12,
								:assists => 12,
								:steals => 3,
								:blocks => 1,
								:slam_dunks => 1 },

 								{:player_name => "Reggie Evans",
								:number => 30,
								:shoe => 14,
								:num_points_scored => 12,
								:rebounds => 12,
								:assists => 12,
								:steals => 12,
								:blocks => 12,
								:slam_dunks => 7},

 								{:player_name => "Brook Lopez",
								:number => 11,
								:shoe => 17,
								:num_points_scored => 17,
								:rebounds => 19,
								:assists => 10,
								:steals => 3,
								:blocks => 1,
								:slam_dunks => 15},

 								{:player_name => "Mason Plumlee",
								:number => 1,
								:shoe => 19,
								:num_points_scored => 26,
								:rebounds => 12,
								:assists => 6,
								:steals => 3,
								:blocks => 8,
								:slam_dunks => 5},

 								{:player_name => "Jason Terry",
								:number => 31,
								:shoe => 15,
								:num_points_scored => 19,
								:rebounds => 2,
								:assists => 2,
								:steals => 4,
								:blocks => 11,
								:slam_dunks => 1}]
		},
		:away => {
			:team_name => "Charlotte Hornets",
			:colors => ["Turquoise","Purple"],
			:players => [
								{:player_name => "Jeff Adrien",
								:number => 4,
								:shoe => 18,
								:num_points_scored => 10,
								:rebounds => 1,
								:assists => 1,
								:steals => 2,
								:blocks => 7,
								:slam_dunks => 2},

 								{:player_name => "Bismak Biyombo",
								:number => 0,
								:shoe => 16,
								:num_points_scored => 12,
								:rebounds => 4,
								:assists => 7,
								:steals => 7,
								:blocks => 15,
								:slam_dunks => 10},

 								{:player_name => "DeSagna Diop",
								:number => 2,
								:shoe => 14,
								:num_points_scored => 24,
								:rebounds => 12,
								:assists => 12,
								:steals => 4,
								:blocks => 5,
								:slam_dunks => 5},

 								{:player_name => "Ben Gordon",
								:number => 8,
								:shoe => 15,
								:num_points_scored => 33,
								:rebounds => 3,
								:assists => 2,
								:steals => 1,
								:blocks => 1,
								:slam_dunks => 0 },

 								{:player_name => "Brendan Haywood",
								:number => 33,
								:shoe => 15,
								:num_points_scored => 6,
								:rebounds => 12,
								:assists => 12,
								:steals => 22,
								:blocks => 5,
								:slam_dunks => 12}]
		}
 	}
end

def num_points_scored(player_name)
    game_hash.each do |player|
  	return player[:num_points_scored] if player[:player_name] == name
  end

def shoe_size(player_name)
  game_hash.each do |game_d, game_v|
  game_v.each do |team_d, team_v|
  if team_d == :players
  team_v.each do |player_d, player_v|
  player_v.each_with_index do |data, i|
   if data == player_name
    return game_hash[game_d][:players][:shoe][i]
            end
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |game_d, game_v|
    game_v.each do |team_d, team_v|
      if team_d == :team_name
        team_v.each_line.with_index do |data, i|
          if data == team_name
            return game_hash[game_d][:colors]
          end
        end
      end
    end
  end
end

def team_names
arr = []
game_hash.each do |game_d, game_v|
arr << game_hash[game_d][:team_name]
    end
  arr
end

def player_numbers(team_name)
  game_hash.each do |game_d, game_v|
    game_v.each do |team_d, team_v|
      if team_d == :team_name
        team_v.each_line.with_index do |data, i|
          if data == team_name
            return game_hash[game_d][:players][:number]
          end
        end
      end
    end
  end
end

def player_stats(player_name)
game_hash.each do |game_d, game_v|
game_v.each do |team_d, team_v|
if team_d == :players
team_v.each do |player_d, player_v|
player_v.each_with_index do |data, i|
  binding.pry
   if data == player_name
   return game_hash[game_d][team_d][player_d]
end
end
end
end
end
end
"staph"
end
