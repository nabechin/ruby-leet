def letter_combinations(digits)
    if digits == ""
        return []
    end
    hash = {"2" => ["a", "b", "c"], "3" => ["d", "e", "f"], "4" => ["g", "h", "i"], "5" => ["j", "k", "l"], "6" => ["m", "n", "o"], "7" => ["p", "q", "r", "s"],
            "8" => ["t", "u", "v"], "9" => ["w", "x", "y", "z"]}
    str_array = []
    hash[digits[0]].each{|d|
        combinations = letter_combinations(digits[1..-1])
        if combinations == []
            str_array = hash[digits[0]]
        else
            combinations.each{|l|
                str_array.push(d + l)
            }
        end
    }
    return str_array
end