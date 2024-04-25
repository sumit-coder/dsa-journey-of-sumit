import 'dart:io';
import 'dart:convert';

main() async {
  var path = "D:\\APPS\\__Work 2023\\Flutter\\Project Portfolio\\dsa-journey-of-sumit\\problem-list\\_top 150.txt";
  Map<String, List> byTopicMap = {};
  String lastTopic = '';
  bool next = false;
  List alreadyUsed = [];
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
        if (!alreadyUsed.contains(line)) {
          byTopicMap[lastTopic]!.add(line);
          alreadyUsed.add(line);
        }
      } else {
        byTopicMap[lastTopic] = [];
        // if not already there then added the problem in this topic
        if (!alreadyUsed.contains(line)) {
          byTopicMap[lastTopic]!.add(line);
          alreadyUsed.add(line);
        }
      }
    }
    print(line);
  });

  print(jsonEncode(byTopicMap));
}

// {"title": '', 'url':'', 'inLists':['LC75']}

Map asdfa = {
  "Array / String": [
    "https://leetcode.com/problems/merge-sorted-array/",
    "https://leetcode.com/problems/remove-element/",
    "https://leetcode.com/problems/remove-duplicates-from-sorted-array/",
    "https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/",
    "https://leetcode.com/problems/majority-element/",
    "https://leetcode.com/problems/rotate-array/",
    "https://leetcode.com/problems/best-time-to-buy-and-sell-stock/",
    "https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/",
    "https://leetcode.com/problems/jump-game/",
    "https://leetcode.com/problems/jump-game-ii/",
    "https://leetcode.com/problems/h-index/",
    "https://leetcode.com/problems/insert-delete-getrandom-o1/",
    "https://leetcode.com/problems/product-of-array-except-self/",
    "https://leetcode.com/problems/gas-station/",
    "https://leetcode.com/problems/candy/",
    "https://leetcode.com/problems/trapping-rain-water/",
    "https://leetcode.com/problems/roman-to-integer/",
    "https://leetcode.com/problems/integer-to-roman/",
    "https://leetcode.com/problems/length-of-last-word/",
    "https://leetcode.com/problems/longest-common-prefix/",
    "https://leetcode.com/problems/reverse-words-in-a-string/",
    "https://leetcode.com/problems/zigzag-conversion/",
    "https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/",
    "https://leetcode.com/problems/text-justification/",
    "https://leetcode.com/problems/merge-strings-alternately/",
    "https://leetcode.com/problems/greatest-common-divisor-of-strings/",
    "https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/",
    "https://leetcode.com/problems/can-place-flowers/",
    "https://leetcode.com/problems/reverse-vowels-of-a-string/",
    "https://leetcode.com/problems/increasing-triplet-subsequence/",
    "https://leetcode.com/problems/string-compression/"
  ],
  "Two Pointers": [
    "https://leetcode.com/problems/valid-palindrome/",
    "https://leetcode.com/problems/is-subsequence/",
    "https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/",
    "https://leetcode.com/problems/container-with-most-water/",
    "https://leetcode.com/problems/3sum/",
    "https://leetcode.com/problems/move-zeroes/",
    "https://leetcode.com/problems/max-number-of-k-sum-pairs/"
  ],
  "Sliding Window": [
    "https://leetcode.com/problems/minimum-size-subarray-sum/",
    "https://leetcode.com/problems/longest-substring-without-repeating-characters/",
    "https://leetcode.com/problems/substring-with-concatenation-of-all-words/",
    "https://leetcode.com/problems/minimum-window-substring/",
    "https://leetcode.com/problems/maximum-average-subarray-i/",
    "https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/",
    "https://leetcode.com/problems/max-consecutive-ones-iii/",
    "https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/",
    "https://leetcode.com/problems/longest-repeating-character-replacement/",
    "https://leetcode.com/problems/permutation-in-string/",
    "https://leetcode.com/problems/sliding-window-maximum/",
    "https://leetcode.com/problems/find-all-anagrams-in-a-string/"
  ],
  "Hashmap": [
    "https://leetcode.com/problems/ransom-note/",
    "https://leetcode.com/problems/isomorphic-strings/",
    "https://leetcode.com/problems/word-pattern/",
    "https://leetcode.com/problems/valid-anagram/",
    "https://leetcode.com/problems/group-anagrams/",
    "https://leetcode.com/problems/two-sum/",
    "https://leetcode.com/problems/happy-number/",
    "https://leetcode.com/problems/contains-duplicate-ii/",
    "https://leetcode.com/problems/longest-consecutive-sequence/",
    "https://leetcode.com/problems/find-the-difference-of-two-arrays/",
    "https://leetcode.com/problems/unique-number-of-occurrences/",
    "https://leetcode.com/problems/determine-if-two-strings-are-close/",
    "https://leetcode.com/problems/equal-row-and-column-pairs/",
    "https://leetcode.com/problems/subarray-sum-equals-k/",
    "https://leetcode.com/problems/contains-duplicate/",
    "https://leetcode.com/problems/valid-anagram/ ",
    "https://leetcode.com/problems/top-k-frequent-elements/",
    "https://leetcode.com/problems/encode-and-decode-strings/"
  ],
  "Stack": [
    "https://leetcode.com/problems/valid-parentheses/",
    "https://leetcode.com/problems/simplify-path/",
    "https://leetcode.com/problems/min-stack/",
    "https://leetcode.com/problems/evaluate-reverse-polish-notation/",
    "https://leetcode.com/problems/basic-calculator/",
    "https://leetcode.com/problems/removing-stars-from-a-string/",
    "https://leetcode.com/problems/asteroid-collision/",
    "https://leetcode.com/problems/decode-string/",
    "https://leetcode.com/problems/generate-parentheses/",
    "https://leetcode.com/problems/daily-temperatures/",
    "https://leetcode.com/problems/car-fleet/",
    "https://leetcode.com/problems/largest-rectangle-in-histogram/",
    "https://leetcode.com/problems/online-stock-span/"
  ],
  "Queue": [
    "https://leetcode.com/problems/number-of-recent-calls/",
    "https://leetcode.com/problems/dota2-senate/",
  ],
  "Intervals": [
    "https://leetcode.com/problems/summary-ranges/",
    "https://leetcode.com/problems/merge-intervals/",
    "https://leetcode.com/problems/insert-interval/",
    "https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/",
    "https://leetcode.com/problems/non-overlapping-intervals/",
    "https://leetcode.com/problems/meeting-rooms/",
    "https://leetcode.com/problems/meeting-rooms-ii/",
    "https://leetcode.com/problems/minimum-interval-to-include-each-query/"
  ],
  "Prefix Sum": [
    "https://leetcode.com/problems/find-the-highest-altitude/",
    "https://leetcode.com/problems/find-pivot-index/",
  ],
  "Matrix": [
    "https://leetcode.com/problems/valid-sudoku/",
    "https://leetcode.com/problems/spiral-matrix/",
    "https://leetcode.com/problems/rotate-image/",
    "https://leetcode.com/problems/set-matrix-zeroes/",
    "https://leetcode.com/problems/game-of-life/",
    "https://leetcode.com/problems/search-a-2d-matrix-ii/"
  ],
  "Linked List": [
    "https://leetcode.com/problems/linked-list-cycle/",
    "https://leetcode.com/problems/add-two-numbers/",
    "https://leetcode.com/problems/merge-two-sorted-lists/",
    "https://leetcode.com/problems/copy-list-with-random-pointer/",
    "https://leetcode.com/problems/reverse-linked-list-ii/",
    "https://leetcode.com/problems/reverse-nodes-in-k-group/",
    "https://leetcode.com/problems/remove-nth-node-from-end-of-list/",
    "https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/",
    "https://leetcode.com/problems/rotate-list/",
    "https://leetcode.com/problems/partition-list/",
    "https://leetcode.com/problems/lru-cache/",
    "https://leetcode.com/problems/delete-the-middle-node-of-a-linked-list/",
    "https://leetcode.com/problems/odd-even-linked-list/",
    "https://leetcode.com/problems/reverse-linked-list/",
    "https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/",
    "https://leetcode.com/problems/reorder-list/",
    "https://leetcode.com/problems/find-the-duplicate-number/",
    "https://leetcode.com/problems/merge-k-sorted-lists/",
    "https://leetcode.com/problems/swap-nodes-in-pairs/",
    "https://leetcode.com/problems/linked-list-cycle-ii/",
    "https://leetcode.com/problems/sort-list/",
    "https://leetcode.com/problems/intersection-of-two-linked-lists/",
    "https://leetcode.com/problems/palindrome-linked-list/"
  ],
  "Trees": [
    "https://leetcode.com/problems/balanced-binary-tree/",
    "https://leetcode.com/problems/subtree-of-another-tree/",
    "https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/",
    "https://leetcode.com/problems/count-good-nodes-in-binary-tree/",
    "https://leetcode.com/problems/serialize-and-deserialize-binary-tree/"
  ],
  "Binary Tree General": [
    "https://leetcode.com/problems/maximum-depth-of-binary-tree/",
    "https://leetcode.com/problems/same-tree/",
    "https://leetcode.com/problems/invert-binary-tree/",
    "https://leetcode.com/problems/symmetric-tree/",
    "https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/",
    "https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/",
    "https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/",
    "https://leetcode.com/problems/flatten-binary-tree-to-linked-list/",
    "https://leetcode.com/problems/path-sum/",
    "https://leetcode.com/problems/sum-root-to-leaf-numbers/",
    "https://leetcode.com/problems/binary-tree-maximum-path-sum/",
    "https://leetcode.com/problems/binary-search-tree-iterator/",
    "https://leetcode.com/problems/count-complete-tree-nodes/",
    "https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/",
    "https://leetcode.com/problems/binary-tree-inorder-traversal/",
    "https://leetcode.com/problems/validate-binary-search-tree/",
    "https://leetcode.com/problems/binary-tree-level-order-traversal/",
    "https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/",
    "https://leetcode.com/problems/binary-tree-right-side-view/",
    "https://leetcode.com/problems/kth-smallest-element-in-a-bst/",
    "https://leetcode.com/problems/path-sum-iii/",
    "https://leetcode.com/problems/diameter-of-binary-tree/",
    "https://leetcode.com/problems/average-of-levels-in-binary-tree/",
    "https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/",
    "https://leetcode.com/problems/search-in-a-binary-search-tree/",
    "https://leetcode.com/problems/delete-node-in-a-bst/",
    "https://leetcode.com/problems/leaf-similar-trees/",
    "https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/",
    "https://leetcode.com/problems/minimum-absolute-difference-in-bst/"
  ],
  "Graph": [
    "https://leetcode.com/problems/number-of-islands/",
    "https://leetcode.com/problems/surrounded-regions/",
    "https://leetcode.com/problems/clone-graph/",
    "https://leetcode.com/problems/evaluate-division/",
    "https://leetcode.com/problems/course-schedule/",
    "https://leetcode.com/problems/course-schedule-ii/",
    "https://leetcode.com/problems/max-area-of-island/",
    "https://leetcode.com/problems/walls-and-gates/",
    "https://leetcode.com/problems/rotting-oranges/",
    "https://leetcode.com/problems/pacific-atlantic-water-flow/",
    "https://leetcode.com/problems/graph-valid-tree/",
    "https://leetcode.com/problems/number-of-connected-components-in-an-undirected-graph/",
    "https://leetcode.com/problems/redundant-connection/",
    "https://leetcode.com/problems/word-ladder/",
    "https://leetcode.com/problems/snakes-and-ladders/",
    "https://leetcode.com/problems/minimum-genetic-mutation/",
    "https://leetcode.com/problems/reconstruct-itinerary/",
    "https://leetcode.com/problems/min-cost-to-connect-all-points/",
    "https://leetcode.com/problems/network-delay-time/",
    "https://leetcode.com/problems/swim-in-rising-water/",
    "https://leetcode.com/problems/alien-dictionary/",
    "https://leetcode.com/problems/cheapest-flights-within-k-stops/",
    "https://leetcode.com/problems/nearest-exit-from-entrance-in-maze/",
    "https://leetcode.com/problems/keys-and-rooms/",
    "https://leetcode.com/problems/number-of-provinces/",
    "https://leetcode.com/problems/reorder-routes-to-make-all-paths-lead-to-the-city-zero/"
  ],
  "Trie": [
    "https://leetcode.com/problems/implement-trie-prefix-tree/",
    "https://leetcode.com/problems/design-add-and-search-words-data-structure/",
    "https://leetcode.com/problems/word-search-ii/",
    "https://leetcode.com/problems/search-suggestions-system/"
  ],
  "Backtracking": [
    "https://leetcode.com/problems/letter-combinations-of-a-phone-number/",
    "https://leetcode.com/problems/combinations/",
    "https://leetcode.com/problems/permutations/",
    "https://leetcode.com/problems/combination-sum/",
    "https://leetcode.com/problems/n-queens-ii/",
    "https://leetcode.com/problems/word-search/",
    "https://leetcode.com/problems/combination-sum-iii/",
    "https://leetcode.com/problems/subsets/",
    "https://leetcode.com/problems/subsets-ii/",
    "https://leetcode.com/problems/combination-sum-ii/",
    "https://leetcode.com/problems/palindrome-partitioning/",
    "https://leetcode.com/problems/n-queens/"
  ],
  "Greedy": [
    "https://leetcode.com/problems/partition-labels/",
    "https://leetcode.com/problems/maximum-subarray/",
    "https://leetcode.com/problems/hand-of-straights/",
    "https://leetcode.com/problems/merge-triplets-to-form-target-triplet/",
    "https://leetcode.com/problems/valid-parenthesis-string/"
  ],
  "Divide & Conquer": ["https://leetcode.com/problems/construct-quad-tree/"],
  "Kadane's Algorithm": ["https://leetcode.com/problems/maximum-sum-circular-subarray/"],
  "Binary Search": [
    "https://leetcode.com/problems/search-insert-position/",
    "https://leetcode.com/problems/search-a-2d-matrix/",
    "https://leetcode.com/problems/find-peak-element/",
    "https://leetcode.com/problems/search-in-rotated-sorted-array/",
    "https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/",
    "https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/",
    "https://leetcode.com/problems/median-of-two-sorted-arrays/",
    "https://leetcode.com/problems/guess-number-higher-or-lower/",
    "https://leetcode.com/problems/successful-pairs-of-spells-and-potions/",
    "https://leetcode.com/problems/koko-eating-bananas/",
    "https://leetcode.com/problems/binary-search/",
    "https://leetcode.com/problems/time-based-key-value-store/"
  ],
  "Heap": [
    "https://leetcode.com/problems/kth-largest-element-in-an-array/",
    "https://leetcode.com/problems/ipo/",
    "https://leetcode.com/problems/find-k-pairs-with-smallest-sums/",
    "https://leetcode.com/problems/find-median-from-data-stream/",
    "https://leetcode.com/problems/smallest-number-in-infinite-set/",
    "https://leetcode.com/problems/maximum-subsequence-score/",
    "https://leetcode.com/problems/total-cost-to-hire-k-workers/",
    "https://leetcode.com/problems/kth-largest-element-in-a-stream/",
    "https://leetcode.com/problems/last-stone-weight/",
    "https://leetcode.com/problems/k-closest-points-to-origin/",
    "https://leetcode.com/problems/task-scheduler/",
    "https://leetcode.com/problems/design-twitter/"
  ],
  "Bit Manipulation": [
    "https://leetcode.com/problems/add-binary/",
    "https://leetcode.com/problems/reverse-bits/",
    "https://leetcode.com/problems/number-of-1-bits/",
    "https://leetcode.com/problems/single-number/",
    "https://leetcode.com/problems/single-number-ii/",
    "https://leetcode.com/problems/bitwise-and-of-numbers-range/",
    "https://leetcode.com/problems/counting-bits/",
    "https://leetcode.com/problems/minimum-flips-to-make-a-or-b-equal-to-c/",
    "https://leetcode.com/problems/missing-number/",
    "https://leetcode.com/problems/sum-of-two-integers/",
    "https://leetcode.com/problems/reverse-integer/"
  ],
  "Math": [
    "https://leetcode.com/problems/palindrome-number/",
    "https://leetcode.com/problems/plus-one/",
    "https://leetcode.com/problems/factorial-trailing-zeroes/",
    "https://leetcode.com/problems/sqrtx/",
    "https://leetcode.com/problems/powx-n/",
    "https://leetcode.com/problems/max-points-on-a-line/",
    "https://leetcode.com/problems/multiply-strings/",
    "https://leetcode.com/problems/detect-squares/"
  ],
  "1D DP": [
    "https://leetcode.com/problems/climbing-stairs/",
    "https://leetcode.com/problems/house-robber/",
    "https://leetcode.com/problems/word-break/",
    "https://leetcode.com/problems/coin-change/",
    "https://leetcode.com/problems/longest-increasing-subsequence/",
    "https://leetcode.com/problems/n-th-tribonacci-number/",
    "https://leetcode.com/problems/min-cost-climbing-stairs/",
    "https://leetcode.com/problems/domino-and-tromino-tiling/",
    "https://leetcode.com/problems/house-robber-ii/",
    "https://leetcode.com/problems/longest-palindromic-substring/",
    "https://leetcode.com/problems/palindromic-substrings/",
    "https://leetcode.com/problems/decode-ways/",
    "https://leetcode.com/problems/maximum-product-subarray/",
    "https://leetcode.com/problems/partition-equal-subset-sum/",
    "https://leetcode.com/problems/longest-valid-parentheses/",
    "https://leetcode.com/problems/unique-paths/",
    "https://leetcode.com/problems/minimum-path-sum/",
    "https://leetcode.com/problems/edit-distance/",
    "https://leetcode.com/problems/pascals-triangle/",
    "https://leetcode.com/problems/perfect-squares/",
    "https://leetcode.com/problems/longest-common-subsequence/"
  ],
  "Multidimensional DP": [
    "https://leetcode.com/problems/triangle/",
    "https://leetcode.com/problems/unique-paths-ii/",
    "https://leetcode.com/problems/interleaving-string/",
    "https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iii/",
    "https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iv/",
    "https://leetcode.com/problems/maximal-square/",
    "https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/",
    "https://leetcode.com/problems/coin-change-ii/",
    "https://leetcode.com/problems/target-sum/",
    "https://leetcode.com/problems/longest-increasing-path-in-a-matrix/",
    "https://leetcode.com/problems/distinct-subsequences/",
    "https://leetcode.com/problems/burst-balloons/",
    "https://leetcode.com/problems/regular-expression-matching/",
    "https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/"
  ],
  "Misc": [
    "https://leetcode.com/problems/next-permutation/",
    "https://leetcode.com/problems/first-missing-positive/",
    "https://leetcode.com/problems/sort-colors/"
  ]
};
