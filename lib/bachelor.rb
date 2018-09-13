def get_first_name(full_name)
  full_name.split(" ")[0]
end

def get_first_name_of_season_winner(data, season)
  winHash = data[season].find do |x|
    #puts "#{x["status"]}"
    x["status"] == "Winner"
  end
  #puts "===+++==="
  #puts winHash
  #puts winHash["name"]
  #puts get_first_name(winHash["name"])
  get_first_name(winHash["name"])
end

def get_contestant_name(data, occupation)
  hash = data.collect do |x,y|
    y.find do |w|
      w["occupation"] == occupation
    end
  end
  puts "===+++==="
  puts "#{hash.class} : #{hash.compact}"
  hash[0]["name"]
  
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
