def two_sum(nums, target)
    hash = Hash.new
    nums.each_with_index do |num, index|
        rest = target - num
        if hash.key?(num) then
            return [hash[num], index]
        end
        hash[rest] = index
    end
end