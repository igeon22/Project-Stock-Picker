def stock(values)
  comparisons = []

  # Get all the possible buy and sell cases
  values.each_with_index do |buy,b_idx,|
    values.each_with_index do |sell,s_idx,|
      if(b_idx < s_idx)
        comparisons.push([buy,sell,b_idx,s_idx])
      end
    end
  end

  # Get the best day to buy and sell
  best = [comparisons[0][0],comparisons[0][1]]
  comparisons.each do |price|
    day_bef = best[1]-best[0]
    actual_day = price[1] - price[0]
    if actual_day>day_bef 
      best = []
      best = price
    end
  end
  return [best[2],best[3]]

end


p stock([17,3,6,9,15,8,6,1,10])