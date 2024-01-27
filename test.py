# from ast import List
# from typing import Counter



# name = {'name': 'jake'}

# name.values()

# # ["un","iq","ue"]

# def maxLength(arr):
#     result = 0
#     def checkDuplicate(a, b):
#         freq = [0] * 26
#         for char in b:
#             idx = ord(char) - ord('a')
#             if (freq[idx] > 0): return True
#             freq[idx] += 1;
#         for char in a:
#             if freq[ord(char) - ord('a')] > 0: return True

#         return False

     

    
#     def dfs(word, leftArray, freq):
#         for leftWord in leftArray:
#             leftWordFreq = Counter(leftWord)
#             # 
#             # for key, val in leftWordFreq.items():
#                 # if val == 1 and key in freq:


# # for idx in range(len(arr)):


def testFunction():
    
    
    result = []

    def dfs(target, numBank):
        if target < 0: return None
        if target == 0: return []

        
        
        
        for num in numBank:
            newTarget = target - num
            targetCombi = dfs(newTarget, numBank)
            print(targetCombi)
            if targetCombi != None:
                fullCombination = [targetCombi, num]
                result.append(fullCombination)
    

    
        
    
    print(dfs(7, [2,3,6,7]))
    print(result)

testFunction()



# from collections import defaultdict
# from typing import List


# class Solution:
#     def wordBreak(self, s: str, wordDict: List[str]) -> bool:

#         memo = defaultdict(bool)

#         def dfs(word, wordDict):
#             if word == '': return True
#             if(word in memo): return memo[word]

#             for w in wordDict:
#                 wLen = len(w)
                
#                 if word[:wLen] == w:
#                     canConstructRes = dfs(word[wLen:], wordDict)
#                     if canConstructRes == True: 
#                         memo[word] = True
#                         return True

#             memo[word] = False
#             return False 
        
#         return dfs(s, wordDict)


# obj = Solution()

# print(obj.wordBreak('leetcode', ["leet","code"] ))

# s = "leetcode", wordDict = ["leet","code"]