# @param {Integer[]} nums
# @return {Integer[][]}
require 'pry'

def search(nums, target)
    return 0 if nums.size == 1 && nums.first == target

    low = 0
    high = nums.size - 1

    while low < high
        mid = low + (high - low) / 2

        if target > nums[mid]
            low = mid + 1
        else
            high = mid
        end
    end

    puts nums[low] == target ? low : -1

end

search([-1,0,3,5,9,12], 9)