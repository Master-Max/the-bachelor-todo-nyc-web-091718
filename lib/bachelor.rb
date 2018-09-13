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
  #puts "===+++==="
  #puts "#{hash.class} : #{hash.compact}"
  #puts "=====-----====="
  #puts hash.compact[0]["name"]
  hash.compact[0]["name"]
end

def count_contestants_by_hometown(data, hometown)
  hash = data.collect do |x,y|
    y.find_all do |w|
      w["hometown"] == hometown
    end
  end
  #puts "=====+++++====="
  #puts "#{hash.class} : #{hash.compact}"
  #puts "=====-----====="
  #puts hash.compact.length
  hash.flatten!
  #puts "=====*****=====\n#{hash}"
  #puts "=====-----====="
  #puts hash.length
  hash.length
end

def get_occupation(data, hometown)
  hash = data.collect do |x,y|
    y.find do |w|
      w["hometown"] == hometown
    end
  end
  hash.compact[0]["occupation"]
end

def get_average_age_for_season(data, season)
  array_of_ages = []
  puts "====++++===="
  array_of_ages = data[season].collect do |x,y|
    y.collect do |w,z|
      puts"."
      puts "||#{w.class} || #{w}"
      w["age"].collect
    end
  end
  puts "#{season}: #{array_of_ages}"
end


