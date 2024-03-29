# Code Challenges

<details close>
<summary>  Millions of Numbers </summary>
<br>

You are given three arrays of equal size. Each array has 1 million RANDOM integer values.

Assume that each array is already sorted in ascending order and that no individual array has any duplicate values.

Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.

Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.

Small Scale Example Below

<pre><code>
  nums_1 = [1, 2, 4, 5, 8]
  nums_2 = [2, 3, 5, 7, 9]
  nums_3 = [1, 2, 5, 8, 9]
  find_matches(nums_1, nums_2, nums_3)
  => [2, 5]
</code></pre>

-------------------------------------
</details>


<details close>
<summary>  Next Palindrome </summary>
<br>

A palindrome is any number, word, or phrase that reads the same forward as it does backward. In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.

Your goal is to write a method/function that takes in an integer and returns the next palindrome. It is safe to assume you are working with only whole numbers, no decimals, and no negatives.

Example

<pre><code>
  #Ruby
  find_next_palindrome(100)
  => 101

  find_next_palindrome(101)
  => 111


  #JavaScript
  findNextPalindrome(100)
  => 101

  findNextPalindrome(101)
  => 111
</code></pre>

-------------------------------------
</details>

<details close>
<summary>  Recursive Function </summary>
<br>

Write or pseudocode a recursive function to calculate the sum of all of the positive whole numbers less than or equal to the input number

-------------------------------------
</details>

<details close>
<summary>  Recursive 2 </summary>
<br>

Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

Examples

<pre><code>
Input: nums = [3,0,1]
Output: 2
Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.
</code></pre>

<pre><code>
Input: nums = [0,1]
Output: 2
Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.
</code></pre>

<pre><code>
Input: nums = [9,6,4,2,3,5,7,0,1]
Output: 8
Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.
</code></pre>

Constraints:

<pre><code>
n == nums.length
1 <= n <= 104
0 <= nums[i] <= n
All the numbers of nums are unique.
</code></pre>

Follow up: Could you implement a solution using only O(1) extra space complexity and O(n) runtime complexity?

-------------------------------------
</details>

<details close>
<summary>  Flattener </summary>
<br>

Instructions

In Ruby and JavaScript, there is a built in method/function to flatten arrays, meaning it makes them one-dimensional. Below are examples of both Ruby and JavaScript:

Examples

<pre><code>
  #Ruby
  nums = [1, 2, 3, [[4], 5], [[[6]]]]
  nums.flatten
  => [1, 2, 3, 4, 5, 6]

  #JavaScript
  var nums = [ 0, 1, 2, [ 3, 4 ] ]
  nums.flat()
  => [ 0, 1, 2, 3, 4 ]
</code></pre>

Your goal is to recreate this functionality without using the built in method/function. You will be given a deeply nested array, or multi-dimensional array, that will look similar to either of the below:

<pre><code>
  nums = [1, 2, 3, [[4], 5], [[[6]]]]
  words = ["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]]
</code></pre>

The contents of the array are not significant. Your method/function should take an input of a multi-dimensional array and output a one-dimensional array. More simply put, remove the deeply nested brackets to return a single array.

-------------------------------------
</details>

<details close>
<summary>  Valid Anagram </summary>
<br>

Instructions

Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

Examples

Example 1:

<pre><code>
Input: s = "anagram", t = "nagaram"
Output: true
</code></pre>

Example 2:

<pre><code>
Input: s = "rat", t = "car"
Output: false
</code></pre>

Constraints:

<pre><code>
1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.
</code></pre>

Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?

My answer: By splitting all characters and then tallying each, it encompasses this edge case

-------------------------------------
</details>

<details close>
<summary>  Valid Palindrome </summary>
<br>

Instructions

A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.

Examples

Example 1:

<pre><code>
Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
</code></pre>

Example 2:

<pre><code>
Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
</code></pre>

Example 3:

<pre><code>
Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
</code></pre>

Constraints:

<pre><code>
1 <= s.length <= 2 * 105
s consists only of printable ASCII characters.
</code></pre>

-------------------------------------
</details>

<details close>
<summary>  Duplicate Destroyer </summary>
<br>

Instructions

Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.

Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:

- Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.

- Return k.

Custom Judge:

<pre><code>
int[] nums = [...]; // Input array
int[] expectedNums = [...]; // The expected answer with correct length

int k = removeDuplicates(nums); // Calls your implementation

assert k == expectedNums.length;
for (int i = 0; i < k; i++) {
    assert nums[i] == expectedNums[i];
}
</code></pre>

If all assertions pass, then your solution will be accepted.


Examples

Example 1:

<pre><code>
Input: nums = [1,1,2]
Output: 2, nums = [1,2,_]
Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).
</code></pre>

Example 2:

<pre><code>
Input: nums = [0,0,1,1,1,2,2,3,3,4]
Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).
</code></pre>

Constraints:

<pre><code>
1 <= nums.length <= 3 * 104
-100 <= nums[i] <= 100
nums is sorted in non-decreasing order.
</code></pre>

-------------------------------------
</details>

<details close>
<summary>  Longest Common Prefix </summary>
<br>

Instructions

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".


Examples

Example 1:

<pre><code>
Input: strs = ["flower","flow","flight"]
Output: "fl"
</code></pre>

Example 2:

<pre><code>
Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
</code></pre>

Constraints:

<pre><code>
1 <= strs.length <= 200
0 <= strs[i].length <= 200
strs[i] consists of only lowercase English letters.
</code></pre>

-------------------------------------
</details>

<details close>
<summary>  Roman Numerals </summary>
<br>

Instructions

Your goal is to write a method/function that converts an integer into a string such that the number is represented in Roman Numerals in the most efficient way.

For example, the number 4 could be written as IIII but it’s more efficient to use IV since that’s a shorter string.

Assume no number is greater than 4,000.

Here are the Roman Numeral equivalents you’ll need to know:

M=1000
CM=900
D=500
CD=400
C=100
XC=90
L=50
XL=40
X=10
IX=9
V=5
IV=4
I=1

Example:

<pre><code>
  to_roman(128)
  => "CXXVIII"
  to_roman(2000)
  => "MM"
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Reverse Integer </summary>
<br>

Instructions

Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-2^31, 2^31 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).


Examples

Example 1:

<pre><code>
Input: x = 123
Output: 321
</code></pre>

Example 2:

<pre><code>
Input: x = -123
Output: -321
</code></pre>

Example 3:

<pre><code>
Input: x = 120
Output: 21
</code></pre>

Constraints:

<pre><code>
-2^31 <= x <= 2^31 - 1
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Word Break </summary>
<br>

Instructions

Given a string s and a dictionary of strings wordDict, return true if s can be segmented into a space-separated sequence of one or more dictionary words.

Note that the same word in the dictionary may be reused multiple times in the segmentation.


Examples

Example 1:

<pre><code>
Input: s = "leetcode", wordDict = ["leet","code"]
Output: true
Explanation: Return true because "leetcode" can be segmented as "leet code".
</code></pre>

Example 2:

<pre><code>
Input: s = "applepenapple", wordDict = ["apple","pen"]
Output: true
Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
Note that you are allowed to reuse a dictionary word.
</code></pre>

Example 3:

<pre><code>
Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
Output: false
</code></pre>

Constraints:

<pre><code>
1 <= s.length <= 300
1 <= wordDict.length <= 1000
1 <= wordDict[i].length <= 20
s and wordDict[i] consist of only lowercase English letters.
All the strings of wordDict are unique.
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Asteroid Collision </summary>
<br>

Instructions

We are given an array asteroids of integers representing asteroids in a row.

For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.

Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.


Examples

Example 1:

<pre><code>
Input: asteroids = [5,10,-5]
Output: [5,10]
Explanation: The 10 and -5 collide resulting in 10. The 5 and 10 never collide.
</code></pre>

Example 2:

<pre><code>
Input: asteroids = [8,-8]
Output: []
Explanation: The 8 and -8 collide exploding each other.
</code></pre>

Example 3:

<pre><code>
Input: asteroids = [10,2,-5]
Output: [10]
Explanation: The 2 and -5 collide resulting in -5. The 10 and -5 collide resulting in 10.
</code></pre>

Constraints:

<pre><code>
2 <= asteroids.length <= 104
-1000 <= asteroids[i] <= 1000
asteroids[i] != 0
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Remove Element </summary>
<br>

Instructions

Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.

Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:

Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
Return k.


Custom Judge

The judge will test your solution with the following code:
<pre><code>
int[] nums = [...]; // Input array
int val = ...; // Value to remove
int[] expectedNums = [...]; // The expected answer with correct length.
                            // It is sorted with no values equaling val.

int k = removeElement(nums, val); // Calls your implementation

assert k == expectedNums.length;
sort(nums, 0, k); // Sort the first k elements of nums
for (int i = 0; i < actualLength; i++) {
    assert nums[i] == expectedNums[i];
}
</code></pre>
If all assertions pass, then your solution will be accepted.


Examples

Example 1:

<pre><code>
Input: nums = [3,2,2,3], val = 3
Output: 2, nums = [2,2,_,_]
Explanation: Your function should return k = 2, with the first two elements of nums being 2.
It does not matter what you leave beyond the returned k (hence they are underscores).
</code></pre>

Example 2:

<pre><code>
Input: nums = [0,1,2,2,3,0,4,2], val = 2
Output: 5, nums = [0,1,4,0,3,_,_,_]
Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
Note that the five elements can be returned in any order.
It does not matter what you leave beyond the returned k (hence they are underscores).
</code></pre>

Constraints:

<pre><code>
0 <= nums.length <= 100
0 <= nums[i] <= 50
0 <= val <= 100
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Course Schedule </summary>
<br>

Instructions

There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course bi first if you want to take course ai.

For example, the pair [0, 1], indicates that to take course 0 you have to first take course 1.
Return true if you can finish all courses. Otherwise, return false.

Examples

Example 1:

<pre><code>
Input: numCourses = 2, prerequisites = [[1,0]]
Output: true
Explanation: There are a total of 2 courses to take. 
To take course 1 you should have finished course 0. So it is possible.
</code></pre>

Example 2:

<pre><code>
Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
Output: false
Explanation: There are a total of 2 courses to take. 
To take course 1 you should have finished course 0, and to take course 0 you should also have finished course 1. So it is impossible.
</code></pre>

Constraints:

<pre><code>
1 <= numCourses <= 2000
0 <= prerequisites.length <= 5000
prerequisites[i].length == 2
0 <= ai, bi < numCourses
All the pairs prerequisites[i] are unique.
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Contains Duplicate </summary>
<br>

Instructions

Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

Examples

Example 1:

<pre><code>
Input: nums = [1,2,3,1]
Output: true
</code></pre>

Example 2:

<pre><code>
Input: nums = [1,2,3,4]
Output: false
</code></pre>

Example 3:

<pre><code>
Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true
</code></pre>

Constraints:

<pre><code>
1 <= nums.length <= 105
-109 <= nums[i] <= 109
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Merge Sorted Array </summary>
<br>

Instructions

You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

Merge nums1 and nums2 into a single array sorted in non-decreasing order.

The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

Examples

Example 1:

<pre><code>
Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
Output: [1,2,2,3,5,6]
Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
</code></pre>

Example 2:

<pre><code>
Input: nums1 = [1], m = 1, nums2 = [], n = 0
Output: [1]
Explanation: The arrays we are merging are [1] and [].
The result of the merge is [1].
</code></pre>

Example 3:

<pre><code>
Input: nums1 = [0], m = 0, nums2 = [1], n = 1
Output: [1]
Explanation: The arrays we are merging are [] and [1].
The result of the merge is [1].
Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.
</code></pre>

Constraints:

<pre><code>
nums1.length == m + n
nums2.length == n
0 <= m, n <= 200
1 <= m + n <= 200
-109 <= nums1[i], nums2[j] <= 109
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Kth Largest Element in an Array </summary>
<br>

Instructions

Given an integer array nums and an integer k, return the kth largest element in the array.

Note that it is the kth largest element in the sorted order, not the kth distinct element.

Can you solve it without sorting?


Examples

Example 1:

<pre><code>
Input: nums = [3,2,1,5,6,4], k = 2
Output: 5
</code></pre>

Example 2:

<pre><code>
Input: nums = [3,2,3,1,2,4,5,5,6], k = 4
Output: 4
</code></pre>

Constraints:

<pre><code>
1 <= k <= nums.length <= 105
-104 <= nums[i] <= 104
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Longest Palindromic Substring </summary>
<br>

Instructions

Given a string s, return the longest palindromic substring in s.


Examples

Example 1:

<pre><code>
Input: s = "babad"
Output: "bab"
Explanation: "aba" is also a valid answer.
</code></pre>

Example 2:

<pre><code>
Input: s = "cbbd"
Output: "bb"
</code></pre>

Constraints:

<pre><code>
1 <= s.length <= 1000
s consist of only digits and English letters.
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Can Place Flowers </summary>
<br>

Instructions

You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.


Examples

Example 1:

<pre><code>
Input: flowerbed = [1,0,0,0,1], n = 1
Output: true
</code></pre>

Example 2:

<pre><code>
Input: flowerbed = [1,0,0,0,1], n = 2
Output: false
</code></pre>

Constraints:

<pre><code>
1 <= flowerbed.length <= 2 * 104
flowerbed[i] is 0 or 1.
There are no two adjacent flowers in flowerbed.
0 <= n <= flowerbed.length
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Majority Element </summary>
<br>

Instructions

Given an array nums of size n, return the majority element.

The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.


Examples

Example 1:

<pre><code>
Input: nums = [3,2,3]
Output: 3
</code></pre>

Example 2:

<pre><code>
Input: nums = [2,2,1,1,1,2,2]
Output: 2
</code></pre>

Constraints:

<pre><code>
n == nums.length
1 <= n <= 5 * 104
-109 <= nums[i] <= 109
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Longest Consecutive Sequence </summary>
<br>

Instructions

Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

You must write an algorithm that runs in O(n) time.


Examples

Example 1:

<pre><code>
Input: nums = [100,4,200,1,3,2]
Output: 4
Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
</code></pre>

Example 2:

<pre><code>
Input: nums = [0,3,7,2,5,8,4,6,0,1]
Output: 9
</code></pre>

Constraints:

<pre><code>
0 <= nums.length <= 105
-109 <= nums[i] <= 109
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Repeated Substring Pattern </summary>
<br>

Instructions

Given a string s, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.


Examples

Example 1:

<pre><code>
Input: s = "abab"
Output: true
Explanation: It is the substring "ab" twice.
</code></pre>

Example 2:

<pre><code>
Input: s = "aba"
Output: false
</code></pre>

Example 3:

<pre><code>
Input: s = "abcabcabcabc"
Output: true
Explanation: It is the substring "abc" four times or the substring "abcabc" twice.
</code></pre>

Constraints:

<pre><code>
1 <= s.length <= 104
s consists of lowercase English letters.
</code></pre>

-------------------------------------
</details>

<details close>
<summary> First Occurrence Index</summary>
<br>

Instructions

Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

Examples

Example 1:

<pre><code>
Input: haystack = "sadbutsad", needle = "sad"
Output: 0
Explanation: "sad" occurs at index 0 and 6.
The first occurrence is at index 0, so we return 0.
</code></pre>

Example 2:

<pre><code>
Input: haystack = "leetcode", needle = "leeto"
Output: -1
Explanation: "leeto" did not occur in "leetcode", so we return -1.
</code></pre>


Constraints:

<pre><code>
1 <= haystack.length, needle.length <= 104
haystack and needle consist of only lowercase English characters.
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Jump Game </summary>
<br>

Instructions

You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

Return true if you can reach the last index, or false otherwise.

Examples

Example 1:

<pre><code>
Input: nums = [2,3,1,1,4]
Output: true
Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
</code></pre>

Example 2:

<pre><code>
Input: nums = [3,2,1,0,4]
Output: false
Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.
</code></pre>


Constraints:

<pre><code>
1 <= nums.length <= 104
0 <= nums[i] <= 105
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Max Profit </summary>
<br>

Instructions

You are given an array prices where prices[i] is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.


Examples

Example 1:

<pre><code>
Input: prices = [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
</code></pre>

Example 2:

<pre><code>
Input: prices = [7,6,4,3,1]
Output: 0
Explanation: In this case, no transactions are done and the max profit = 0.
</code></pre>


Constraints:

<pre><code>
1 <= prices.length <= 105
0 <= prices[i] <= 104
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Valid Parenthesis </summary>
<br>

Instructions

Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

1. Open brackets must be closed by the same type of brackets.

2. Open brackets must be closed in the correct order.

3. Every close bracket has a corresponding open bracket of the same type.


Examples

Example 1:

<pre><code>
Input: s = "()"
Output: true
</code></pre>

Example 2:

<pre><code>
Input: s = "()[]{}"
Output: true
</code></pre>

Example 3:

<pre><code>
Input: s = "(]"
Output: false
</code></pre>


Constraints:

<pre><code>
1 <= s.length <= 104
s consists of parentheses only '()[]{}'.
</code></pre>

-------------------------------------
</details>

<details close>
<summary> Search Insert Position </summary>
<br>

Instructions

Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity.


Examples

Example 1:

<pre><code>
Input: nums = [1,3,5,6], target = 5
Output: 2
</code></pre>

Example 2:

<pre><code>
Input: nums = [1,3,5,6], target = 2
Output: 1
</code></pre>

Example 3:

<pre><code>
Input: nums = [1,3,5,6], target = 7
Output: 4
</code></pre>


Constraints:

<pre><code>
1 <= nums.length <= 104
-104 <= nums[i] <= 104
nums contains distinct values sorted in ascending order.
-104 <= target <= 104
</code></pre>

-------------------------------------
</details>