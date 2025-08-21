/*
Problem Description:
Given an array of integers nums and an integer target, return the indices of the
two numbers that add up to the target.
 */

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
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
This approach iterates through the array, checking every pair of elements to
find a sum that matches the target.

Time Complexity: O(n²)
Space Complexity: O(1)
 */