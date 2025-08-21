/*
Problem Description:
Given an array of integers nums and an integer target, return the indices of the
two numbers that add up to the target.

Dart Function Signature:
              List<int> twoSum(List<int> nums, int target);

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
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

  //Example 1
  List<int> nums1 = [2, 7, 11, 15];
  int target1 = 9;
  print(solution.twoSum(nums1, target1));       // Output: [0, 1]

  //Example 2
  List<int> nums2 = [2, 3, 4];
  int target2 = 7;
  print(solution.twoSum(nums2, target2));       // Output: [1, 2]
}

/*
Explanation:
This approach iterates through the array, checking every pair of elements to
find a sum that matches the target.

Time Complexity: O(n²)
Space Complexity: O(1)
 */