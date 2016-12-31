#Implement a method stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
# >stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4] # for a profit of $15 - $3 == $12

def stock_picker(array)
  profit = -999999
  counter = 0
  result = []
  while counter < array.length - 1
    array.each_with_index do |el, index|
      if counter < index && profit < (el - array[counter])
        profit = el - array[counter]
        result[0] = counter
        result[1] = index
      end
    end
    counter += 1
  end
  result
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
