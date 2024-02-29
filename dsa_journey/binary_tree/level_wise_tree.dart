import 'dart:collection';

TreeNode root = TreeNode(
  4,
  TreeNode(3, TreeNode(1, null, null), TreeNode(2, TreeNode(0, null, null), null)),
  TreeNode(5, null, null),
);

//         4
//        / \
//       3   5
//      / \
//     1   2
//          \
//           0

void main() {
  void dfs(TreeNode? node) {
    if (node == null) return;

    Queue<TreeNode> queue = Queue();
    queue.add(node);

    // TreeNode currNode = queue.removeFirst();

    while (queue.isNotEmpty) {
      int n = queue.length;
      List returnRow = [];
      for (var i = 0; i < n; i++) {
        TreeNode currNode = queue.removeFirst();

        returnRow.add(currNode.val);
        if (currNode.left != null) {
          queue.add(currNode.left!);
        }
        if (currNode.right != null) {
          queue.add(currNode.right!);
        }
      }
      print(returnRow);
    }

    // dfs(node.left);
  }
  // dfs(root);

  dfs(root);
}

class TreeNode {
  final int val;
  final TreeNode? left;
  final TreeNode? right;

  TreeNode(this.val, this.left, this.right);
}
