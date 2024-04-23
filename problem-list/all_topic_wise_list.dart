import 'dart:developer';
import 'dart:io';
import 'dart:convert';

Map topicsWiseFiles = {
  "Two Pointers": [
    "https://leetcode.com/problems/valid-palindrome/",
    "https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/",
    "https://leetcode.com/problems/3sum/",
    "https://leetcode.com/problems/container-with-most-water/",
    "https://leetcode.com/problems/trapping-rain-water/",
    "https://leetcode.com/problems/is-subsequence/",
    "https://leetcode.com/problems/move-zeroes/",
    "https://leetcode.com/problems/container-with-most-water/",
    "https://leetcode.com/problems/max-number-of-k-sum-pairs/",
    "https://leetcode.com/problems/container-with-most-water/",
    "https://leetcode.com/problems/3sum/",
    "https://leetcode.com/problems/trapping-rain-water/",
    "https://leetcode.com/problems/move-zeroes/",
    "https://leetcode.com/problems/valid-palindrome/",
    "https://leetcode.com/problems/is-subsequence/",
    "https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/",
    "https://leetcode.com/problems/container-with-most-water/",
    "https://leetcode.com/problems/3sum/",
  ],
};

main() async {
  var path = "D:\\APPS\\__Work 2023\\Flutter\\Project Portfolio\\dsa-journey-of-sumit\\problem-list\\top 75.txt";
  Map<String, List> byTopicMap = {};
  String lastTopic = '';
  bool next = false;
  await File(path).openRead().transform(utf8.decoder).transform(LineSplitter()).forEach((line) {
    if (next) {
      next = false;
      lastTopic = line;
    }
    if (line.length == 0) {
      next = true;
    }
    if (line.length != 0) {
      if (byTopicMap.containsKey(lastTopic)) {
        byTopicMap[lastTopic]!.add(line);
      } else {
        byTopicMap[lastTopic] = [];
        byTopicMap[lastTopic]!.add(line);
      }
    }
    print(line);
  });

  print(jsonEncode(byTopicMap));
}

Map asdfa = {
  "Array / String": [
    "Array / String",
    "https://leetcode.com/problems/merge-strings-alternately/",
    "https://leetcode.com/problems/greatest-common-divisor-of-strings/",
    "https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/",
    "https://leetcode.com/problems/can-place-flowers/",
    "https://leetcode.com/problems/reverse-vowels-of-a-string/",
    "https://leetcode.com/problems/reverse-words-in-a-string/",
    "https://leetcode.com/problems/product-of-array-except-self/",
    "https://leetcode.com/problems/increasing-triplet-subsequence/",
    "https://leetcode.com/problems/string-compression/"
  ],
  "Two Pointers [_/]": [
    "Two Pointers [_/]",
    "https://leetcode.com/problems/move-zeroes/",
    "https://leetcode.com/problems/is-subsequence/",
    "https://leetcode.com/problems/container-with-most-water/",
    "https://leetcode.com/problems/max-number-of-k-sum-pairs/"
  ],
  "Sliding Window": [
    "Sliding Window",
    "https://leetcode.com/problems/maximum-average-subarray-i/",
    "https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/",
    "https://leetcode.com/problems/max-consecutive-ones-iii/",
    "https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/"
  ],
  "Prefix Sum": [
    "Prefix Sum",
    "https://leetcode.com/problems/find-the-highest-altitude/",
    "https://leetcode.com/problems/find-pivot-index/"
  ],
  "Hash Map / Set": [
    "Hash Map / Set",
    "https://leetcode.com/problems/find-the-difference-of-two-arrays/",
    "https://leetcode.com/problems/unique-number-of-occurrences/",
    "https://leetcode.com/problems/determine-if-two-strings-are-close/",
    "https://leetcode.com/problems/equal-row-and-column-pairs/"
  ],
  "Stack": [
    "Stack",
    "https://leetcode.com/problems/removing-stars-from-a-string/",
    "https://leetcode.com/problems/asteroid-collision/",
    "https://leetcode.com/problems/decode-string/"
  ],
  "Queue": ["Queue", "https://leetcode.com/problems/number-of-recent-calls/", "https://leetcode.com/problems/dota2-senate/"],
  "Linked List": [
    "Linked List",
    "https://leetcode.com/problems/delete-the-middle-node-of-a-linked-list/",
    "https://leetcode.com/problems/odd-even-linked-list/",
    "https://leetcode.com/problems/reverse-linked-list/",
    "https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/"
  ],
  "Binary Tree - DFS": [
    "Binary Tree - DFS",
    "https://leetcode.com/problems/maximum-depth-of-binary-tree/",
    "https://leetcode.com/problems/leaf-similar-trees/",
    "https://leetcode.com/problems/count-good-nodes-in-binary-tree/",
    "https://leetcode.com/problems/path-sum-iii/",
    "https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/",
    "https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/"
  ],
  "Binary Tree - BFS": [
    "Binary Tree - BFS",
    "https://leetcode.com/problems/binary-tree-right-side-view/",
    "https://leetcode.com/problems/maximum-level-sum-of-a-binary-tree/"
  ],
  "Binary Search Tree": [
    "Binary Search Tree",
    "https://leetcode.com/problems/search-in-a-binary-search-tree/",
    "https://leetcode.com/problems/delete-node-in-a-bst/"
  ],
  "Graphs - DFS": [
    "Graphs - DFS",
    "https://leetcode.com/problems/keys-and-rooms/",
    "https://leetcode.com/problems/number-of-provinces/",
    "https://leetcode.com/problems/reorder-routes-to-make-all-paths-lead-to-the-city-zero/",
    "https://leetcode.com/problems/evaluate-division/"
  ],
  "Graphs - BFS": [
    "Graphs - BFS",
    "https://leetcode.com/problems/nearest-exit-from-entrance-in-maze/",
    "https://leetcode.com/problems/rotting-oranges/"
  ],
  "Heap / Priority Queue": [
    "Heap / Priority Queue",
    "https://leetcode.com/problems/kth-largest-element-in-an-array/",
    "https://leetcode.com/problems/smallest-number-in-infinite-set/",
    "https://leetcode.com/problems/maximum-subsequence-score/",
    "https://leetcode.com/problems/total-cost-to-hire-k-workers/"
  ],
  "Binary Search": [
    "Binary Search",
    "https://leetcode.com/problems/guess-number-higher-or-lower/",
    "https://leetcode.com/problems/successful-pairs-of-spells-and-potions/",
    "https://leetcode.com/problems/find-peak-element/",
    "https://leetcode.com/problems/koko-eating-bananas/"
  ],
  "Backtracking": [
    "Backtracking",
    "https://leetcode.com/problems/letter-combinations-of-a-phone-number/",
    "https://leetcode.com/problems/combination-sum-iii/"
  ],
  "DP - 1D": [
    "DP - 1D",
    "https://leetcode.com/problems/n-th-tribonacci-number/",
    "https://leetcode.com/problems/min-cost-climbing-stairs/",
    "https://leetcode.com/problems/house-robber/",
    "https://leetcode.com/problems/domino-and-tromino-tiling/"
  ],
  "DP - Multidimensional": [
    "DP - Multidimensional",
    "https://leetcode.com/problems/unique-paths/",
    "https://leetcode.com/problems/longest-common-subsequence/",
    "https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/",
    "https://leetcode.com/problems/edit-distance/"
  ],
  "Bit Manipulation": [
    "Bit Manipulation",
    "https://leetcode.com/problems/counting-bits/",
    "https://leetcode.com/problems/single-number/",
    "https://leetcode.com/problems/minimum-flips-to-make-a-or-b-equal-to-c/"
  ],
  "Trie": ["Trie", "https://leetcode.com/problems/implement-trie-prefix-tree/", "https://leetcode.com/problems/search-suggestions-system/"],
  "Intervals": [
    "Intervals",
    "https://leetcode.com/problems/non-overlapping-intervals/",
    "https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/"
  ],
  "Monotonic Stack": [
    "Monotonic Stack",
    "https://leetcode.com/problems/daily-temperatures/",
    "https://leetcode.com/problems/online-stock-span/"
  ]
};
