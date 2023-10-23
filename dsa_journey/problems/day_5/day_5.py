# 392. Is Subsequence

class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        idx = 0
        if (s == ''):
            return True

        for word in t:
            if word == s[idx]:
                idx = idx + 1

            if idx == len(s):
                return True

        return False
