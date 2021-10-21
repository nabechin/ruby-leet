def search_insert(nums, target)
    is_lower = false
    is_higher = false
    nums.each_with_index do |item, index|
        if item == target
            return index
        end
        if is_lower && is_higher
            return index
        end
        if item < target
            is_higher = true
        end
        if item > target
            is_lower = true
        end
    end
end