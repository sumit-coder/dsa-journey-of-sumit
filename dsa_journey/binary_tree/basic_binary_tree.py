# Definition for a binary tree node.
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


class Solution:
    def __init__(self):
        self.maxDepth = 0
        self.res = None

    def findBottomLeftValue(self, root: TreeNode) -> int:

        def dfs(node, depth):
            if node == None:
                return
            if depth > self.maxDepth:
                self.maxDepth = depth
                self.res = node
            dfs(node.left, depth + 1)
            dfs(node.right, depth + 1)

        dfs(root, 1)

        # return self.res.val
        return 0
        # Time Complexity O(n)
        # Space Complexity O(depth of tree) due to recursion stack

# BFS Solution:

        # queue = deque()
        # queue.append(root)
        # while len(queue) > 0:
        #     currNode = queue.popleft()
        #     if currNode.right:
        #         queue.append(currNode.right)
        #     if currNode.left:
        #         queue.append(currNode.left)

        #     if len(queue) == 0 and currNode.left == None and currNode.right == None:
        #         return currNode.val
