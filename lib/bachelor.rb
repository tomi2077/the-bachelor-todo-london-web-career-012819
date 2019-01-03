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
  count = 0
  data.each do |sea, info|
    info.each do |k,v|
      if k["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |sea, info|
    info.each do |k,v|
      if k["hometown"] == hometown
        return k["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |sea,info|
    if info == season
      info.each do |k,v|
        ages << k["age"].to_f
      end
    end
  end
  ages.sum.fdiv(ages.size)
  ages
end
