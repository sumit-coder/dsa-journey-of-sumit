// onPressed: () {
            //   // print('object');

            //   // memoization
            //   Map<int, List<int>?> memo = {};

            //   // fib(int num) {
            //   //   if (memo.containsKey(num)) return memo[num];
            //   //   if (num <= 2) return 1;
            //   //   // print(num);
            //   //   memo[num] = fib(num - 1) + fib(num - 2);
            //   //   return memo[num];
            //   // }
            //   // gridTraveler(int m, int n) {
            //   //   var memoKey = '$m,$n';
            //   //   if (memo.containsKey(memoKey)) return memo[memoKey];
            //   //   if (m == 0 || n == 0) return 0;
            //   //   if (m == 1 && n == 1) return 1;
            //   //   var total = gridTraveler(m - 1, n) + gridTraveler(m, n - 1);

            //   //   memo[memoKey] = total;

            //   //   return total;
            //   // }
            //   // canSum(int target, List<int> numbs, Map<int, bool> memo) {
            //   //   if (memo.containsKey(target)) return memo[target]; // check in memoization map

            //   //   if (target == 0) return true;

            //   //   for (int n in numbs) {
            //   //     int newTarget = target - n;

            //   //     if (newTarget < 0) continue;

            //   //     if (canSum(newTarget, numbs, memo) == true) {
            //   //       memo[target] = true;
            //   //       return true;
            //   //     }
            //   //   }

            //   //   memo[target] = false;
            //   //   return false;
            //   // }

            //   // howSum(int target, List<int> nums, Map<int, dynamic> memo) {
            //   //   if (memo.containsKey(target)) return memo[target];
            //   //   if (target == 0) return [];
            //   //   if (target < 0) return null;

            //   //   for (var n in nums) {
            //   //     int newTarget = target - n;

            //   //     var res = howSum(newTarget, nums, memo);

            //   //     memo[target] = res;
            //   //     if (res != null) {
            //   //       res.add(n);
            //   //       return res;
            //   //     }
            //   //   }
            //   //   // print(memo);
            //   //   return null;
            //   // }

            //   // List<int>? bestSum(int target, List<int> numbers) {
            //   //   if (memo.containsKey(target)) return memo[target];
            //   //   if (target == 0) return [];
            //   //   if (target < 0) return null;

            //   //   List<int>? result;

            //   //   for (var num in numbers) {
            //   //     int newTarget = target - num;

            //   //     var res = bestSum(newTarget, numbers);

            //   //     if (res != null) {
            //   //       var newCombination = [...res, num];

            //   //       if (result == null || newCombination.length < result.length) {
            //   //         result = newCombination;
            //   //       }
            //   //     }
            //   //   }

            //   //   memo[target] = result;
            //   //   return result;
            //   // }

            //   // canConstruct(String word, List<String> wordBank) {
            //   //   if (word == '') return true;

            //   //   for (var str in wordBank) {
            //   //     if (word.startsWith(str)) {
            //   //       var canConstructRes = canConstruct(word.substring(str.length), wordBank);

            //   //       if (canConstructRes == true) return true;
            //   //     }
            //   //   }
            //   //   return false;
            //   // }

            //   // int countConstruct(String word, List<String> wordBank, Map<String, int> memo) {
            //   //   if (memo.containsKey(word)) return memo[word]!;
            //   //   if (word == '') return 1;
            //   //   int result = 0;

            //   //   for (var w in wordBank) {
            //   //     if (word.startsWith(w)) {
            //   //       var numWaysConstruct = countConstruct(word.substring(w.length), wordBank, memo);
            //   //       // memo[word] = numWaysConstruct;
            //   //       result += numWaysConstruct;
            //   //     }
            //   //   }

            //   //   // memo[word] = numWaysConstruct;
            //   //   memo[word] = result;
            //   //   // print(memo);
            //   //   return result;
            //   // }
            //   // allConstruct(String w, List wordBank, Map memo) {
            //   //   if (memo.containsKey(w)) return memo[w];
            //   //   if (w == '') return [[]];

            //   //   var result = [];

            //   //   for (var word in wordBank) {
            //   //     if (w.startsWith(word)) {
            //   //       var suffix = w.substring(word.length);

            //   //       var suffixConstruct = allConstruct(suffix, wordBank, memo);

            //   //       var finalSuffixConstruct = suffixConstruct.map((way) => [word, ...way]); // [[word, ways]]

            //   //       result = [...finalSuffixConstruct, ...result];
            //   //     }
            //   //   }

            //   //   memo[w] = result;
            //   //   return result;
            //   // }

            //   // print(allConstruct('purple', ['purp', 'p', 'ur', 'le', 'purpl'], {}));
            //   // print(allConstruct('abcdef', ['ab', 'abc', 'cd', 'def', 'abcd', 'ef', 'c'], {}));
            //   // print(allConstruct('enterapotentpot', ['a', 'p', 'ent', 'enter', 'ot', 'o', 't'], {}));
            //   // print(allConstruct('eeeeeeeeeeeeeeeeeeeeeeeeeeeeee', ['eee', 'eeeee', 'eeee', 'e', 'eeeee', 'eeee', 'eeeeeeeeeee'], {}));

            //   // Tabulation - For DP

            //   // fib(int n) {
            //   //   List arry = List.generate(n + 1, (index) => 0);
            //   //   arry[1] = 1;

            //   //   for (var idx = 0; idx < arry.length; idx++) {
            //   //     if (idx + 1 < arry.length) arry[idx + 1] += arry[idx];
            //   //     if (idx + 2 < arry.length) arry[idx + 2] += arry[idx];
            //   //   }

            //   //   print(arry);
            //   //   return arry[n];
            //   // }

            //   // gridTraveler(int m, int n) {
            //   //   List grid = List.generate(m + 1, (index) => List.generate(n + 1, (index) => 0));

            //   //   grid[1][1] = 1;
            //   //   for (var i = 0; i <= m; i++) {
            //   //     for (var j = 0; j <= n; j++) {
            //   //       var current = grid[i][j];

            //   //       if (j + 1 <= n) grid[i][j + 1] += current;
            //   //       if (i + 1 <= m) grid[i + 1][j] += current;
            //   //     }
            //   //   }
            //   //   print(grid);

            //   //   return grid[m][n];
            //   // }

            //   // print(gridTraveler(3, 3));
            //   // print(gridTraveler(50));
            // },