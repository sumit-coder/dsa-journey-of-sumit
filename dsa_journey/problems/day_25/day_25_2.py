# 2352. Equal Row and Column Pairs


from collections import defaultdict


class Solution:
    def equalPairs(self, grid: List[List[int]]) -> int: # type: ignore
        rowDict = defaultdict(int)
        count = 0 

        for row in grid:
            rowDict[str(row)] += 1
        
        for i in range(len(grid)):
            column = []

            for j in range(len(grid)):
                column.append(grid[j][i])
            count += rowDict[str(column)]
            
        return count