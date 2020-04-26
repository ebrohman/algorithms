// Seven Boom!
// Create a function that takes an array of numbers and return "Boom!" if the number 7 appears in the array. Otherwise, return "there is no 7 in the array".

// Examples
// sevenBoom([1, 2, 3, 4, 5, 6, 7]) ➞ "Boom!"

// sevenBoom([8, 6, 33, 100]) ➞ "there is no 7 in the array"

// sevenBoom([2, 55, 60, 97, 86]) ➞ "Boom!"

function sevenBoom(ary) {
  ary.join("").indexOf("7") >= 0 ? "Boom!" : "there is no 7 in the array";
}
