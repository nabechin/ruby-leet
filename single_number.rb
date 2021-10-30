def single_number(nums)
    hash = {}
    nums.each do |num|
        if hash.key?(num)
            hash[num] += 1
        else
            hash[num] = 1
        end
    end
    hash.each do |key, value|
        if(value ==1)
            return key
        end
    end
end