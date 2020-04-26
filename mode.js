// Basic Statistics: Mode The mode of a group of numbers is the value (or
// values) that occur most often (values have to occur more than once). Given
// a sorted array of numbers, return an array of all modes in ascending order.

// Examples mode([4, 5, 6, 6, 6, 7, 7, 9, 10]) ➞ [6]

// mode([4, 5, 5, 6, 7, 8, 8, 9, 9]) ➞ [5, 8, 9]

// mode([1, 2, 2, 3, 6, 6, 7, 9]) ➞ [2, 6]


function mode(...nums) {
  let map = nums.reduce((m, number) => m.set(number, (m.get(number) || 0)  + 1), new Map());

  return [...map].filter(v => v[1] == Math.max(...map.values())).map(v => v[0]);
}
