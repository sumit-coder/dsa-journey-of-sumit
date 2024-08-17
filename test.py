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


# from heapq import heapify, heappush, heappop


# def testFunction():

#     result = []

#     def dfs(target, numBank):
#         if target < 0:
#             return None
#         if target == 0:
#             return []

#         for num in numBank:
#             newTarget = target - num
#             targetCombi = dfs(newTarget, numBank)
#             print(targetCombi)
#             if targetCombi != None:
#                 fullCombination = [targetCombi, num]
#                 result.append(fullCombination)

#     print(dfs(7, [2, 3, 6, 7]))
#     print(result)

# testFunction()


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


# nums = [1, 1, 2, 4, 9]

# heapify(nums)

# heappush(nums, 0)


# print(heappop(nums), heappop(nums))

# --------------------------------------------------------------------------------------------------
# Learning Graph DSA


# -------------------------------------------------
# from collections import UserString, deque
# graph = {
#     'a': ['b', 'c'],
#     'b': ['d'],
#     'c': ['e'],
#     'd': ['f'],
#     'e': [],
#     'f': []
# }


# def dfs(graph, source):
#     print(source)
#     for n in graph[source]:
#         dfs(graph, n)


# def bfs(graph, source):
#     queue = deque([source])

#     while queue:
#         currVal = queue.pop()
#         print(currVal)
#         for n in graph[currVal]:
#             queue.append(n)


# dfs(graph, 'a')
# ------------------------------------------------------------------------------------------------------
# Problem - 1

# graph = {
#     'f': ['g', 'i'],
#     'g': ['h'],
#     'h': [],
#     'i': ['g', 'k'],
#     'j': ['i'],
#     'k': []
# }


# def hasPath(graph, start, end):
#     stack = [start]

#     while stack:
#         currNode = stack.pop()
#         print(currNode)
#         for node in graph[currNode]:
#             if node == end:
#                 return True
#             stack.append(node)

#     return False


# print(hasPath(graph, 'f', 'j'))

# ----------------------------------------------------------------------------------------------
# Problem - 2 - undirected path with cycle's

# from collections import defaultdict


# edgesList = [
#     ['i', 'j'],
#     ['k', 'i'],
#     ['m', 'k'],
#     ['k', 'l'],
#     ['o', 'n'],
# ]


# def findPath(graph, start, end):
#     adj = defaultdict(list)
#     for edge in graph:
#         fromNode = edge[0]
#         toNode = edge[1]

#         adj[fromNode].append(toNode)
#         adj[toNode].append(fromNode)

#     visited = set()
#     # dfs

#     def dfs(graph, src, dst, visited):
#         if src == dst:
#             return True
#         if src in visited:
#             return False
#         visited.add(src)
#         for nei in graph[src]:
#             if dfs(graph, nei, dst, visited) == True:
#                 return True

#         return False

#     return dfs(adj, start, end, visited)

#     # stack = [start]
#     # seen = set()
#     # while stack:
#     #     curr = stack.pop()
#     #     if curr == end:
#     #         return True

#     #     for edge in adj[curr]:
#     #         if edge not in seen:
#     #             stack.append(edge)
#     #             seen.add(edge)

#     # return False


# print(findPath(edgesList, 'n', 'k'))


# --------------------------------------------------------------------------------------------------
# Problem - 3 - connected components count
# from collections import defaultdict


# edgesList = [
#     ['i', 'j'],
#     ['k', 'i'],
#     ['m', 'k'],
#     ['k', 'l'],
#     ['o', 'n'],
#     ['z', 'p'],
# ]


# ================== USING NO RETURN FROM DFS FUNCTION ======================
# def connectedComp(graph):
#     adj = defaultdict(list)
#     res = 0
#     visited = set()

#     # fill adj list
#     for edge in graph:
#         adj[edge[0]].append(edge[1])
#         adj[edge[1]].append(edge[0])

#     # traverse throw the graph stating on every unvisited node
#     def graphDFS(graph, currNode, visited):
#         if currNode in visited: return
#         visited.add(currNode)

#         for neg in graph[currNode]:
#             graphDFS(graph, neg, visited)

#     # iterate throw all edges and find components
#     for edge in adj.keys():
#         if not edge in visited:
#             res += 1
#             graphDFS(adj, edge, visited)

#     return res

# ======================= USING RETURN THROW DFS FUNCTION ===================================
# def connectedComp(graph):
#     adj = defaultdict(list)
#     res = 0
#     visited = set()

#     # fill adj list
#     for edge in graph:
#         adj[edge[0]].append(edge[1])
#         adj[edge[1]].append(edge[0])

#     # try to traverse throw the graph stating on every node
#     def graphDFS(graph, currNode, visited):
#         if currNode in visited:
#             return False
#         visited.add(currNode)

#         for neg in graph[currNode]:
#             graphDFS(graph, neg, visited)

#         return True

#     # iterate throw all edges and find components
#     for edge in adj.keys():
#         if graphDFS(adj, edge, visited) == True:
#             res += 1

#     return res


# print(connectedComp(edgesList))

# --------------------------------------------------------------------------------------------------
# Problem - 4 - largest components
# from collections import defaultdict


# edgesList = [
#     ['i', 'j'],
#     ['k', 'i'],
#     ['m', 'k'],
#     ['k', 'l'],
#     ['o', 'n'],
#     ['z', 'p'],
# ]


# def largestComponent(edgesList):
#     adj = defaultdict(list)
#     for edge in edgesList:
#         adj[edge[0]].append(edge[1])
#         adj[edge[1]].append(edge[0])

#     def dfs(graph, currNode, visited):
#         if currNode in visited:
#             return 0

#         visited.add(currNode)
#         count = 1
#         for nei in graph[currNode]:
#             count += dfs(graph, nei, visited)

#         return count

#     visited = set()
#     res = -1
#     for edge in adj.keys():
#         if not edge in visited:
#             res = max(dfs(adj, edge, visited), res)

#     return res


# print(largestComponent(edgesList))

# --------------------------------------------------------------------------------------------------
# Problem - 5 - shortest path
from collections import defaultdict, deque
import heapq
# import heapq

# edgesList = [
#     ['i', 'j'],
#     ['k', 'i'],
#     ['m', 'k'],
#     ['k', 'l'],
#     ['o', 'n'],
#     ['z', 'p'],
# ]


# def findShortestPath(graph, start, end):
#     adj = defaultdict(list)
#     for node1, node2 in graph:
#         adj[node1].append(node2)
#         adj[node2].append(node1)

#     # def bfs():
#     #     pass

#     queue = deque([[start, 0]])
#     visited = set()

#     while queue:
#         currNode, distance = queue.popleft()
#         if currNode == end:
#             return distance
#         if not currNode in visited:
#             visited.add(currNode)
#             for nei in adj[currNode]:
#                 queue.append([nei, distance + 1])

#     return -1


# print(findShortestPath(edgesList, 'i', 'n'))


# # --------------------------------------------------------------------------------------------------
# # Problem - 6 - Island Count
# graphMatrix = [
#     [0, 1, 0, 0, 1, 0],
#     [1, 1, 0, 0, 1, 0],
#     [0, 1, 0, 0, 0, 0],
#     [0, 0, 0, 1, 1, 0],
#     [0, 1, 0, 1, 1, 0],
#     [0, 0, 0, 0, 0, 1],
# ]

# #     [-, 1, -, -, 1, -],
# #     [1, 1, -, -, 1, -],
# #     [-, 1, -, -, -, -],
# #     [-, -, -, 1, 1, -],
# #     [-, 1, -, 1, 1, -],
# #     [-, -, -, -, -, -],


# def islandCount():
#     row, col = len(graphMatrix), len(graphMatrix[0])
#     visited = set()
#     res = 0

#     def exploreIsland(r, c, visited):
#         # if row or col go outside of matrix then return
#         if not 0 <= r < row or not 0 <= c < col or graphMatrix[r][c] == 0:
#             return
#         if (r, c) in visited:
#             return

#         visited.add((r, c))
#         exploreIsland(r-1, c, visited)  # UP
#         exploreIsland(r+1, c, visited)  # DOWN
#         exploreIsland(r, c-1, visited)  # LEFT
#         exploreIsland(r, c+1, visited)  # RIGHT

#     for r in range(row):
#         for c in range(col):
#             currNode = graphMatrix[r][c]
#             if currNode == 1 and not (r, c) in visited:
#                 exploreIsland(r, c, visited)
#                 res += 1
#     print(visited)

#     return res


# print(islandCount())

# --------------------------------------------------------------------------------------------------
# Problem - 7 - Min Island
# graphMatrix = [
#     [0, 1, 0, 0, 1, 0],
#     [1, 1, 0, 0, 1, 0],
#     [0, 1, 0, 0, 0, 0],
#     [0, 0, 0, 1, 1, 0],
#     [0, 0, 0, 1, 1, 0],
#     [0, 0, 0, 0, 0, 1],
# ]

# #     [-, 1, -, -, 1, -],
# #     [1, 1, -, -, 1, -],
# #     [-, 1, -, -, -, -],
# #     [-, -, -, 1, 1, -],
# #     [-, 1, -, 1, 1, -],
# #     [-, -, -, -, -, -],


# def islandCount():
#     row, col = len(graphMatrix), len(graphMatrix[0])
#     visited = set()
#     res = float('inf')

#     def exploreIsland(r, c, visited, count):
#         # if row or col go outside of matrix then return
#         if not 0 <= r < row or not 0 <= c < col or graphMatrix[r][c] == 0:
#             return 0
#         if (r, c) in visited:
#             return 0

#         visited.add((r, c))
#         res = 1
#         res += exploreIsland(r-1, c, visited, count)  # UP
#         res += exploreIsland(r+1, c, visited, count)  # UP
#         res += exploreIsland(r, c-1, visited, count)  # UP
#         res += exploreIsland(r, c+1, visited, count)  # UP
#         # exploreIsland(r+1, c, visited)  # DOWN
#         # exploreIsland(r, c-1, visited)  # LEFT
#         # exploreIsland(r, c+1, visited)  # RIGHT

#         return res

#     for r in range(row):
#         for c in range(col):
#             currNode = graphMatrix[r][c]
#             if currNode == 1 and not (r, c) in visited:
#                 res = min(exploreIsland(r, c, visited, 1), res)

#     print(visited)

#     return res


# print(islandCount())


# #
# #
# graph = [['O', 'O', 'O', 'O', 'O'],
#          ['O', 'X', 'O', 'O', 'O'],
#          ['O', 'X', 'X', 'O', 'O'],
#          ['O', 'X', 'C', 'O', 'O'],
#          ['O', 'X', 'X', 'O', 'O'],
#          ['C', 'O', 'O', 'O', 'O']]


# def minSwaps(nums) -> int:
#     freqOfOne = sum(nums)
#     oneCount = nums[0]
#     end = 0
#     res = float('inf')

#     for start in range(len(nums)):
#         if start != 0:
#             oneCount -= nums[start-1]
#         while end - start + 1 < freqOfOne:
#             end += 1
#             oneCount += nums[end % len(nums)]

#         res = min(res, freqOfOne - oneCount)

#     return res


# print(minSwaps([0, 1, 1, 1, 0, 0, 1, 1, 0]))
# ---------------------------------------------- HEAP Test ----------------------------------
# heap = [2, 5, 8, 6, -7, 0]
# heap = [(-1*n) for n in heap]
# heapq.heapify(heap)
# k = 2

# while k:
#     print(-1 * heapq.heappop(heap))
#     # print(heapq.heappush(heap, 1))
#     k -= 1


# print(heap)


#  ---------------------------------- build all combinations -----------------------

nums = [10, 1, 2, 7, 6, 1, 5]
res = []
target = 8

for i in range(len(nums)):
    for j in range(len(nums)):
        curr = nums[i:j+1]
        if sum(curr) == target:
            res.append(curr)
        print(curr)

print(res)
# print(curr if len(curr) > 0 else 0)
