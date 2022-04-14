def stock_picker(arr_of_stock_prices)
  result = {}
  arr_of_stock_prices.map do |num|
    arr_of_stock_prices.map do |n|
      if arr_of_stock_prices.index(num) <= arr_of_stock_prices.index(n)
        result[-num + n] = [arr_of_stock_prices.index(num), arr_of_stock_prices.index(n)]
      end
    end
  end
  result[result.keys.sort.last]
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
