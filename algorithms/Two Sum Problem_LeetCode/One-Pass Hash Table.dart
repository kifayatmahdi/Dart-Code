/*
Problem Description:
Given an array of integers nums and an integer target, return the indices of the
two numbers that add up to the target.
*/

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var numMap = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (numMap.containsKey(complement)) {
        return [numMap[complement]!, i];
      }
      numMap[nums[i]] = i;
    }
    return [];
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  print(solution.twoSum(nums, target));       // Output: [0, 1]
}



/*
Explanation:
This method combines adding elements to the hash map and checking for
complements in a single pass through the array.

Time Complexity: O(n)
Space Complexity: O(n)



Conclusion and Comparison:
In solving the Two Sum problem with Dart, we’ve explored three distinctive
methods, each with its unique advantages and drawbacks. The Brute Force Approach,
while straightforward, is inefficient for large datasets due to its O(n²) time
complexity. The Two-Pass Hash Table offers better performance by utilizing a hash
map to reduce time complexity to O(n), which is a significant improvement. The
One-Pass Hash Table stands out as the most time-efficient option. It combines the
hash map creation and complement checking in one iteration, making it particularly
beneficial for larger datasets where execution time is a crucial factor.
*/