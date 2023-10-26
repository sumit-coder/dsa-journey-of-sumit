# 643. Maximum Average Subarray I
from typing import List


class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:

        curSum = sum(nums[:k])
        maxAvg = curSum

        for i in range(k, len(nums)):
            curSum += nums[i]
            curSum -= nums[i-k]
            maxAvg = max(maxAvg, curSum)

        return maxAvg / k
