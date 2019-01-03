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
    ages = data[season].collect do |age|
    contestant["age"].to_i
  end

  summed_ages = contestant_ages.reduce(0) {|sum, age| sum += age}
  contestant_count =  contestant_ages.count.to_f
  (summed_ages/contestant_count).round

end
