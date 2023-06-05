# ruby_challenges

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
