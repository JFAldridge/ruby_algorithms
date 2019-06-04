stock_arrs = []
9.times {|i| stock_arrs[i] = 10.times.map { rand(15) }}


def stock_picker(stock)
  stock_buy = 0
  stock_sell = 0
  profit = 0
  sum_arr = stock.map {|arr| arr.inject { |a, b| a + b}}
  sum_arr.to_enum.with_index.reverse_each { |sell, i| 
    sum_arr.first(i).to_enum.with_index.reverse_each { |buy, f|
      if (sell - buy) > profit
        profit = sell - buy
        stock_sell = i
        stock_buy = f
      else
        next
      end
  }
  }
  puts "Buy day #{stock_buy + 1}. Sell day #{stock_sell + 1}. Profit #{profit}."
end

stock_picker(stock_arrs)