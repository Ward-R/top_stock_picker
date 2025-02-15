# each element of the price array is a daily stock price
# which is the best day to buy then sell? here it is day 1 buy, day 4 sell. starts at day 0
# Solution Output => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(price_array)
  max_profit = 0
  profit = 0
  exchange_array = []
  
  price_array.each_with_index do |buy_amount, buy_day|
    price_array.each_with_index do |sell_amount, sell_day|
      if buy_day >= sell_day # ensures that you can't sell before you buy
        # do nothing  
      else # calculates profit
        profit = sell_amount - buy_amount
        if profit > max_profit # if profit is max profit, updates
          max_profit = profit # this isn't currently used
          exchange_array = [buy_day, sell_day] # updates return array
        end
      end
    end
  end
  return exchange_array
end

p stock_picker([17,3,6,9,15,8,6,1,10])
