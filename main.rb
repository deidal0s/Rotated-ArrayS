# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    return -1 if nums.empty?
    return nums.index(target) if nums.include?(target)
    return -1 if nums.length == 1
    left = 0
    right = nums.length - 1
    while left <= right
        mid = (left + right) / 2
        if nums[mid] == target
        return mid
        elsif nums[mid] > nums[right]
        if nums[mid] > target && target >= nums[left]
            right = mid - 1
        else
            left = mid + 1
        end
        else
        if nums[mid] < target && target <= nums[right]
            left = mid + 1
        else
            right = mid - 1
        end
        end
    end
    return -1
    end
end
