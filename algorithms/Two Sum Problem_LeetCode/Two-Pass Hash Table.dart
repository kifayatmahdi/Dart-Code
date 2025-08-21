/*
Problem Description:
Given an array of integers nums and an integer target, return the indices of the
two numbers that add up to the target.
 */

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var numMap = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
      numMap[nums[i]] = i;
    }
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (numMap.containsKey(complement) && numMap[complement] != i) {
        return [i, numMap[complement]!];
      }
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
This approach uses a hash map for faster lookups. First, it maps each element to
its index. Then, we check for each element if the complement (target — element)
exists in the map.

Time Complexity: O(n)
Space Complexity: O(n)
 */