def search_insert(nums, target)
    left = 0
    right = nums.length - 1
    if target < nums[left]
        return 0
    end
    if target > nums[right]
        return right + 1
    end
    while left <= right do
        mid = ((left + right)/2).floor
        if nums[mid] == target
            return mid
        elsif target < nums[mid]
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return left
end