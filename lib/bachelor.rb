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
  person = nil
  name = nil
  data.each do |season, info|
    info.each do |x|
      x.each do |desc, stuff|
        if desc == "name"
          name = stuff
        end
        if desc == "occupation" && stuff == occupation
          person = name
        end
      end
    end
  end
  return person
end

def count_contestants_by_hometown(data, hometown)
  # code here
  amount = 0
  data.each do |season, info|
    info.each do |x|
      x.each do |desc, stuff|
        if desc == "hometown" && stuff == hometown
          amount += 1
        end
      end
    end
  end
  return amount
end

def get_occupation(data, hometown)
  # code here
  job = nil
  i = false
  data.each do |season, info|
    info.each do |x|
      x.each do |desc, stuff|
        if desc == "hometown" && stuff == hometown
          i = true
        end
        if desc == "occupation" && i == true
          job = stuff
          break
        end
      end
    end
  end
  return job
end

def get_average_age_for_season(data, season)
  # code here
end
