def stock_picker(array)

    # Create a hash that contains the profits for each combination of buying and selling days.
    profit_hash = Hash.new(0)

    # Iterate over each day to calculate the profit for all subsequent days
    array.each.with_index do |number, index|

        # create counter that starts at 1 more than the index of the current array item
        # ensures we only calculate profits where the "selling day" comes after the "buying day"
        counter = index + 1

        # loop through the array, calculating the difference between the current number and each subsequent item in the array
        until counter == array.length

            # add pair to profit_hash, where the key is an array with the indexes of the buying and selling day, and the value is the profit
            profit_hash[[index, counter]] = (number * -1) + array[counter]
            counter +=1
        end
    end
    print profit_hash.key(profit_hash.values.max)
end

stock_picker([5, 20, 7, 33, 2])