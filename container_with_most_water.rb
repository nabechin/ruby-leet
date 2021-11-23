def max_area(height)
    left = 0
    right = height.length - 1
    max_square = 0
    while left < right
        square = (right - left) * [height[left], height[right]].min
        if square > max_square
            max_square = square
        end
        if height[left] > height[right]
            right = right - 1
        else
            left = left + 1
        end
    end
    return max_square
end