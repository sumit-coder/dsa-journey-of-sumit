# Test And Learn File

from ast import List
from collections import Counter

def closeStrings(word1: str, word2: str) -> bool:

        if len(word1) != len(word2): return False

        counterMap1 = Counter(word1)
        counterMap2 = Counter(word2)

        wordKeys = counterMap1.keys() == counterMap2.keys()

        print(wordKeys)

        print(counterMap1.keys())
        print(counterMap2.keys())


        wordValues1 = sorted(counterMap1.values()) 
        wordValues2 = sorted(counterMap2.values())

        # print(wordValues1)
        # print(wordValues2)

        if wordKeys and wordValues1 == wordValues2 :
            return True

        return False 


def longestConsecutive(nums):
      counter = Counter(nums)

      return counter
      
      

print(longestConsecutive([0,3,7,2,5,8,4,6,0,1]))

