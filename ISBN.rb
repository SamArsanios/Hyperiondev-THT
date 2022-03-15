def isbn13(str)
    if str.length == 10
        arr = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    else
        arr = [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1]
    end
        #split string values into separate values and convert them to integers
		split_values = str.split("")
        converted = split_values.map(&:to_i)
        
        #multiply isbn array with its respective array and sum their product
        result = converted.zip(arr).map{|x, y| x * y}
        sum = result.inject(0){|sum,x| sum + x }

        #check for validity of isbn 10 and isbn13
        if str.length == 10
            if sum % 11 == 0
                value = "Valid"
                converted.unshift(978)
                converted[-1] += 1
                p converted.join("")
                p value
            else
                value = "Invalid"
                p value
            end
        elsif str.length == 13
            if sum % 10 == 0
                value = "Valid"
                p value
            else
                value = "Invalid"
                p value
            end
        end
        value
end

isbn13("0330301624")