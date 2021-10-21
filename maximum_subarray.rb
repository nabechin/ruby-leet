def max_sub_array(nums)
    max = nums[0]
    local_max = nums[0]
    for i in (1..nums.length-1) do
        local_max = [nums[i] + local_max, nums[i]].max
        max = [local_max, max].max
    end
    return max
end

# kadane alghorism