require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |names|
    names.each do |key, val|
      if val == "Winner"
        name = names["name"]
        return name.split(" ").first
      end
    end
  end
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season, names|
    names.each do |info|
      if info ["occupation"] == occupation
        return info["name"]
      end
    end
  end
end




def count_contestants_by_hometown(data, hometown)
  # code here
  i = 0
  data.each do |season, names|
   names.each do |key, val|
     if key["hometown"].include?(hometown)
       i += 1
     end
   end
 end
 i
end


def get_occupation(data, hometown)
  # code here
  data.each do |season, names|
    names.each do |key, val|
      if key["hometown"].include?(hometown)
        return key["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |show_season, names|
    if show_season.include?(season)
      names.each do |key, val|
        ages << key["age"].to_i
      end
    end
  end
  avg = ages.sum.to_f / ages.size
  avg.round
end
