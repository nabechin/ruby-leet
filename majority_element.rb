def majority_element(nums)
    count = 1
    candidate = nums[0]
    1.upto(nums.length) do |i|
        puts i
        if count == 0
            candidate = nums[i]
            count = 1
        elsif candidate == nums[i]
            count += 1
        else
            count -= 1
        end
    end
    return candidate
end