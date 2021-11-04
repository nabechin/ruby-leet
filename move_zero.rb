# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    num_of_zero = 0
    temp = nums
    nums.each_with_index do |v, i|
        if v == 0
            num_of_zero += 1
        end
    end
    nums.delete(0)
    puts num_of_zero
    num_of_zero.times do
        nums.push(0)
    end
    return nums
end