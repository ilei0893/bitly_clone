# @param {String} s
# @return {Integer}

require 'pry'


def majority_element(nums)
    return nums.first if nums.length == 1

    majority_length = nums.length / 2
    counter_hash = nums.tally

    return counter_hash.select { |key,value| value > majority_length }.keys.first

end
majority_element([3,2,3])