from ast import List
from typing import Counter



name = {'name': 'jake'}

name.values()

# ["un","iq","ue"]

def maxLength(arr):
    result = 0
    def checkDuplicate(a, b):
        freq = [0] * 26
        for char in b:
            idx = ord(char) - ord('a')
            if (freq[idx] > 0): return True
            freq[idx] += 1;
        for char in a:
            if freq[ord(char) - ord('a')] > 0: return True

        return False

     

    
    def dfs(word, leftArray, freq):
        for leftWord in leftArray:
            leftWordFreq = Counter(leftWord)
            # 
            # for key, val in leftWordFreq.items():
                # if val == 1 and key in freq:


# for idx in range(len(arr)):


