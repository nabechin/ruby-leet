def is_valid(s)
    parentheses = {")": "(", "}": "{", "]": "["}
    array = []
    s.split("").each do |item|
        if parentheses.key?(item)
            temp = array.shift
            if temp != parentheses[item]
                return false
            end
            array.unshift(item)
        end
    end
    return true
end