# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    if nums.length < 3
        return []
    end
    result = []
    sorted_array = nums.sort
    last_pointer = nums.length - 2
    0.upto(last_pointer).each{|pointer|
        if pointer == 0 || (pointer > 0 && sorted_array[pointer] != sorted_array[pointer - 1])
            left = pointer + 1
            right = sorted_array.length - 1
            sum = -sorted_array[pointer]
            while left < right do
                if sorted_array[left] + sorted_array[right] == sum
                    result.push([sorted_array[pointer], sorted_array[left], sorted_array[right]])
                    while sorted_array[left] == sorted_array[left + 1] && left < right do
                        left = left + 1
                    end
                    while sorted_array[right] == sorted_array[right - 1] && left < right do
                        right = right - 1
                    end
                    left = left + 1
                    right = right - 1
                elsif sorted_array[left] + sorted_array[right] < sum
                    left = left + 1
                else
                    right = right - 1
                end
            end
        end
    }
    return result
end