def isbn13(str)
    if str.length == 10
        arr = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    else
        arr = [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1]
    end

		splited = str.split("")
        converted = splited.map(&:to_i)
        # p converted
        
        result = converted.zip(arr).map{|x, y| x * y}
        sum = result.inject(0){|sum,x| sum + x }
        p sum

        if str.length == 10
            if sum % 11 == 0
                value = "Valid"
                p converted.unshift(978)
                converted[-1] += 1
                p converted.join("")
            else
                value = "Invalid"
            end
        elsif str.length == 13
            if sum % 10 == 0
                value = "Valid"
            else
                value = "Invalid"
            end
        end
        value
end

isbn13("0330301624")