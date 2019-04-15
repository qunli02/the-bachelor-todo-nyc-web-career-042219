def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |x|
    first = nil
    x.each do |key, thing|
      if key == "name"
        name = thing.split(" ")
        first = name[0]
      end
      if key == "status" && thing == "Winner"
        return first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  name = nil
  data.each do |season, info|
    info.each do |desc, stuff|
      if desc == "name" 
        name = stuff
      end
      if desc == "occupation" && stuff == occupation
      end
    end
  end
  return name
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
