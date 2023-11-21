# 👨‍💻📖 DSA Journey of Sumit 🤯

## Programming Languages:
- **Dart**
- **Python**
- **Java Script**
- **Java**

## Learning Materials:
> Here some Recourses to start Data Structures and Algorithm

### Videos:
| Videos                                        | Links                                                        |
| --------------------------------------------- | ------------------------------------------------------------ |
| CS50x 2023 - Lecture 5 - Data Structures      | [Youtube Video](https://www.youtube.com/watch?v=X8h4dq9Hzq8) |
| CS50x 2023 - Lecture 3 - Algorithms           | [Youtube Video](https://www.youtube.com/watch?v=4oqjcKenCH8) |
| Learn Data Structures and Algorithms for free | [Youtube Video](https://www.youtube.com/watch?v=CBYHwZcbD-s) |
| Big O: How Code Slows as Data Grows           | [Youtube Video](https://www.youtube.com/watch?v=Ee0HzlnIYWQ) |
| Big-O Notation - For Coding Interviews        | [Youtube Video](https://www.youtube.com/watch?v=BgLTDT03QtU) |
| The Complete Guide to Big O Notation & Complexity Analysis for Algorithms: Part 1 of 2 | [Youtube Video](https://www.youtube.com/watch?v=HfIH3czXc-8) |

### Websites:
| Websites           | Description                                                                                              | Links                                      |
| ------------------ | -------------------------------------------------------------------------------------------------------- | ------------------------------------------ |
| neetcode.io        | This website covers wide range problem with Video Solution + Roadmap for Beginners                       | [Website](https://neetcode.io/roadmap)     |
| seanprashad.com/leetcode-patterns | Company wise DSA Problems                       | [Website](https://seanprashad.com/leetcode-patterns)     |
| bigocheatsheet.com | This webpage covers the space and time Big-O complexities of common algorithms used in Computer Science. | [Website](https://www.bigocheatsheet.com/) |
| igotanoffer.com | All in one DSA Refresh with Great Time & Space PDF | [Website](https://igotanoffer.com/blogs/tech/data-structure-interview-questions) |
| metacareers.com | DSA from Meta Careers | [Website](https://www.metacareers.com/profile/trial/?redirect=search&chooseView=Hello+World) |
| techinterviewhandbook.org | Blind 75 + Grind 169 | [Website](https://www.techinterviewhandbook.org/grind75?weeks=8&hours=21) |

## Data Structure:

> A data structure is a way of organizing and managing data so that it can be accessed and processed efficiently. There are many different data structures, each with its own strengths and weaknesses. Some common data structures include s

| Data Structure                | Description                        | Learning Resources        |
| ----------------------------- | ---------------------------------- | ------------------------- |
| [Array](#array)               | Array Data Type Description        | [Array Resources](#array) |
| [Dictionaries](#dictionaries) | Dictionaries Data Type Description |
| [Hashing](#hashing)           | Hashing Data Type Description      |
| [Hash Table](#hashTable)      | Hash Table Data Type Description   |
| [Heap](#heap)                 | Heap Data Type Description         |
| [Stacks](#stacks)             | Stacks Data Type Description       |
| [Queues](#queues)             | Queues Data Type Description       |
| [Linked Lists](#LinkedLists)  | Linked Lists Data Type Description |
| [Trees](#trees)               | Trees Data Type Description        |
| [Binary Tree](#binaryTree)    | Binary Tree Data Type Description  |
| [Graph](#graph)               | Graph Data Type Description        |

## Algorithms:

> An algorithm is a procedure used for solving a problem or performing a computation

| Algorithm               | Description | Learning Resources  |
| ----------------------- | ----------- | ------------------- |
| [Sliding Widow](#array) | -           | [Resources](#array) |
| [Two Pointer](#array)   | -           |                     |

### Array
> this 

| **Method**                               | **Description**                           | **Time Complexity**                       | **Space Complexity**                      |
|------------------------------------------|------------------------------------------|------------------------------------------|------------------------------------------|
| `list()`                                 | Creates a new empty list.                 | O(1)                                     | O(1)                                     |
| `list(iterable)`                         | Creates a list from an iterable.          | O(len(iterable))                         | O(len(iterable))                         |
| `append(element)`                        | Adds an element to the end of the list.   | O(1)                                     | O(1)                                     |
| `extend(iterable)`                       | Extends the list by appending elements from the iterable. | O(len(iterable)) | O(len(iterable))                         |
| `insert(index, element)`                 | Inserts an element at the specified index. | O(n) where n is the length of the list   | O(1)                                     |
| `remove(element)`                        | Removes the first occurrence of the specified element. | O(n) where n is the length of the list   | O(1)                                     |
| `pop(index)`                             | Removes and returns the element at the specified index. | O(n) where n is the length of the list   | O(1)                                     |
| `index(element)`                         | Returns the index of the first occurrence of the specified element. | O(n) where n is the length of the list   | O(1)                                     |
| `count(element)`                         | Returns the number of occurrences of the specified element. | O(n) where n is the length of the list   | O(1)                                     |
| `sort()`                                | Sorts the elements of the list in ascending order. | O(n*log(n)) where n is the length of the list | O(log(n))                                |
| `reverse()`                             | Reverses the elements of the list in-place. | O(n) where n is the length of the list   | O(1)                                     |
| `copy()`                                | Returns a shallow copy of the list.       | O(n) where n is the length of the list   | O(n) where n is the length of the list   |
| `clear()`                               | Removes all elements from the list.       | O(1)                                     | O(1)                                     |
| `len(list)`                              | Returns the number of elements in the list.| O(1)                                     | O(1)                                     |
| `list.remove()` with a loop              | Removes elements from the list based on a condition using a loop. | O(n) where n is the length of the list   | O(1)                                     |
| `list comprehension`                     | Creates a new list with the specified expression for each item in the iterable. | O(len(iterable)) | O(len(iterable))                         |
| `map(function, iterable)`                | Applies a function to all the items in the input iterable and returns a new list. | O(n) where n is the length of the iterable | O(n) where n is the length of the iterable |

Please note that these complexities are average-case complexities, and actual performance may vary based on specific Python implementations and hardware considerations. Use this information as a general guideline. If you have any more questions or need further clarification, feel free to ask!


### Set
> Python Set Time Complexity

| **Operation**                            | **Time Complexity**                       |
|------------------------------------------|------------------------------------------|
| `set()`                                  | O(1)                                     |
| `set(iterable)`                          | O(len(iterable))                         |
| `add(element)`                           | O(1)                                     |
| `remove(element)`                        | O(1) if present, KeyError if not         |
| `discard(element)`                       | O(1) if present, no action if not        |
| `pop()`                                  | O(1) - removes and returns an arbitrary element (KeyError if set is empty)|
| `clear()`                                | O(1) - removes all elements from the set |
| `element in set`                         | O(1)                                     |
| `element not in set`                     | O(1)                                     |
| `union(other_set)`                       | O(len(set) + len(other_set))             |
| `intersection(other_set)`                | O(min(len(set), len(other_set)))         |
| `difference(other_set)`                  | O(len(set))                              |
| `symmetric_difference(other_set)`        | O(len(set))                              |
| `issubset(other_set)`                    | O(len(set))                              |
| `issuperset(other_set)`                  | O(len(other_set))                        |
| `len(set)`                               | O(1)                                     |
| `copy()`                                | O(len(set))                              |
| `{expression for item in iterable}`      | O(len(iterable))                         |
| `set.remove()` with a loop               | O(n) where n is the number of elements to remove |
