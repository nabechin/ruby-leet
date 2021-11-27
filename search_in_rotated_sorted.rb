def search(nums, target)
    l = 0
    r = nums.length - 1
    while l < r do
        m = ((r + l) / 2).floor
        if target == nums[m]
            return m
        end
        if nums[l] <= nums[m]
            if nums[l] <= target && target < nums[m]
                r = m - 1
            else
                l = m + 1
            end
        else
            if nums[m] < target && target <= nums[r]
                l = m + 1
            else
                r = m - 1
            end
        end
    end
    if nums[l] == target
        return l
    else
        return -1
    end
end