from collections import defaultdict


graph = {
    "a": ["b", "c"],
    "b": ["d"],
    "c": ["e"],
    "d": ["f"],
    "e": [],
    "f": [],
}

graphTwo = [
    ["b", "c"],
    ["d", "a"],
    ["e", "a"],
    ["f", "c"],
    ["a", "c"],
]

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


def graphToAdjList(undirectedGraph):
    newGraph = defaultdict(list)

    for nodeGroup in undirectedGraph:
        node1 = nodeGroup[0]
        node2 = nodeGroup[1]

        newGraph[node1].append(node2)
        newGraph[node2].append(node1)

    print(newGraph)


graphToAdjList(graphTwo)
