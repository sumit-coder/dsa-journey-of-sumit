graph = {
    "a": ["b", "c"],
    "b": ["d"],
    "c": ["e"],
    "d": ["f"],
    "e": [],
    "f": [],
}

# DFS With Stack
def graphWithStack(graph, node):
    stack = [node]
    while len(stack) > 0:
        currNode = stack.pop()
        print(currNode)
        for n in graph[currNode]:
            stack.append(n)

# DFS With Recursion
def dfsOnGraph(graph, node):
    print(node)
    for n in graph[node]:
        dfsOnGraph(graph, n)

# BFS With Queue
def bfsWithQueue(graph, node):
    queue = []

graphWithStack(graph, "a")
        