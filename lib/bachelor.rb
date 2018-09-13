def get_first_name_of_season_winner(data, season)
  winHash = data[season].find do |x|
    puts "#{x["status"]}"
    x["status"] == "Winner"
  end
  puts "===+++==="
  puts winHash
  puts winHash["name"].first
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
