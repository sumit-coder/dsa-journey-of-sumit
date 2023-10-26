# 28. Find the Index of the First Occurrence in a String

class Solution:
    def strStr(self, haystack: str, needle: str) -> int:

        for fast in range(len(haystack) + 1 - len(needle)):
            if haystack[fast: fast + len(needle)] == needle:
                return fast

        return -1
