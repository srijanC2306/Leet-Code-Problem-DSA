// 3. Longest Substring Without Repeating Characters

// TODO ; Question

//  Example 1:

// Input: s = "abcabcbb"
// Output: 3
// Explanation: The answer is "abc", with the length of 3.
// Example 2:

// Input: s = "bbbbb"
// Output: 1
// Explanation: The answer is "b", with the length of 1.
// Example 3:

// Input: s = "pwwkew"
// Output: 3
// Explanation: The answer is "wke", with the length of 3.
// Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

void main() {
  String s = 'abcabcbb';
  final result  = Solution().lengthOfLongestSubstring(s);

  print(result) ; 
}

class Solution {
  int lengthOfLongestSubstring(String s) {


    int longestSubString = 0;

    Map<String, int> lastOccurance = {};

    int left = 0;

    for (int right = 0; right < s.length; right++) {
      if (lastOccurance.containsKey(s[right]) && lastOccurance[s[right]]! >= left) {
          
         left = lastOccurance[s[right]]! + 1;
       
      }

      lastOccurance[s[right]] = right;

      longestSubString = longestSubString > right - left + 1  ? longestSubString : right - left + 1 ;


    }

    return longestSubString;
  }
}
