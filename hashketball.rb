# Write your code below game_hash
 def game_hash 
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(passed_name)
game_hash.each do |key, value|
  value[:players].each do |prop|
  if prop[:player_name] == passed_name
      return prop[:points]
    end
  end
end
end

# # num_points_scored('Kemba Walker')

def shoe_size(passed_name)
  game_hash.each do |key , value|
    value[:players].each do |prop|
      if prop[:player_name] == passed_name 
        return prop[:shoe]
      end
    end
  end
end

# shoe_size('Kemba Walker')


def team_colors(team)
  game_hash.each do |key, value|
    if value[:team_name] == team
    return value[:colors]
  end
end
end
# team_colors('Charlotte Hornets')

def team_names()
  game_hash.collect do |key, value|
  value[:team_name]
  end
end
team_names()

# def player_numbers(team)
#   team_numbers = []
# game_hash.each do |key, value|
#   value[:players].each do |prop|
#     if value[:team_name] == team 
#       team_numbers << prop[:number]
#   end
# end
# end
# team_numbers
# end

# player_numbers("Brooklyn Nets")

# def player_stats(player_name)
#   player_stats = nil
# game_hash.each do |key, value|
#   value[:players].each do |prop|
#   if player_name == prop[:player_name]
#     player_stats = prop
#   end
#   end
# end
# player_stats.tap { |hs| hs.delete(:player_name)}
# end

# player_stats('Alan Anderson')


# def num_points_scored()
#   score = nil
#   player = nil 
# game_hash.each do |key, value|
#   value[:players].each do |prop|
#       if score == nil 
#         score = prop[:points]
#         player = prop[:player_name]
#       end

#       if score < prop[:points] 
#         score = prop[:points] 
#         player = prop[:player_name]
#       end
#     end
#   end
#   return player +' with ' +"#{score} points"
# end
# num_points_scored()


# def winning_team()
#   team1 = nil
#   team1_score = 0
#   team2 = nil 
#   team2_score = 0

# game_hash.each do |key, value|
#   value[:players].each do |prop|
      
#         if value[:team_name] == "Brooklyn Nets"
#         team1 = value[:team_name]
#         team1_score += prop[:points]
#       end
#     if value[:team_name] == "Charlotte Hornets"
#         team2 = value[:team_name]
#         team2_score += prop[:points]
#       end
#     end
#   end
#   return team1_score > team2_score ? team1 : team2; 
#   end

#   winning_team()
 

# def player_with_longest_name()
#   player = nil
#   name_length = 0

# game_hash.each do |key, value|
#   value[:players].each do |prop|
#     if name_length <  prop[:player_name].length
#     player = prop[:player_name]
#     name_length = prop[:player_name].length
#       end
#     end
#   end
# # return name_length
# return player
# end

# player_with_longest_name()

#   def long_name_steals_a_ton?()
#   player = nil
#   name_length = 0
#   player_steals = 0
# general_steals = 0 
# game_hash.each do |key, value|
#   value[:players].each do |prop|
#     if general_steals < prop[:steals]
#       general_steals = prop[:steals]
#     end

#     if name_length <  prop[:player_name].length && player_steals < prop[:steals]
#     player = prop[:player_name]
#     name_length = prop[:player_name].length
#     player_steals =  prop[:steals]
#       end
#     end
#   end
# player_steals == general_steals ? true : false
# end
#   long_name_steals_a_ton?()
