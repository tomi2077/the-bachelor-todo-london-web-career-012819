def get_first_name_of_season_winner(data, season)
  data.each do |s, v|
    if s == season
      v.each do |a,b|
        if a.values.include?"Winner"
          return a["name"].split.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |sea, info|
    info.each do |k,v|
      if k["occupation"] == occupation
        return  k["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  data.each do |sea, info|
    info.each do |k,v|
      if v["hometown"] == hometown
        return k["name"].size
      end
    end
  end
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
