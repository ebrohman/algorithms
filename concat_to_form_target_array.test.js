// Create a function that returns true if smaller arrays can concatenate to form the target array and false otherwise.

// Examples
// canConcatenate([[1, 2, 3, 4], [5, 6], [7]], [1, 2, 3, 4, 5, 6, 7]) ➞ true

// canConcatenate([[2, 1, 3], [5, 4, 7, 6]], [7, 6, 5, 4, 3, 2, 1]) ➞ true

// canConcatenate([[2, 1, 3], [5, 4, 7, 6, 7]], [1, 2, 3, 4, 5, 6, 7]) ➞ false
// Duplicate 7s not found in target array.

// canConcatenate([[2, 1, 3], [5, 4, 7]], [1, 2, 3, 4, 5, 6, 7]) ➞ false
// Missing 6 from target array.

function canConcatenate(src, target) {
  return src.reduce((acc, ary) => { return acc.concat(ary) }, []).sort().join("") == target.sort().join("")
}

test(`cannot`, () => {
  expect(canConcatenate([1,2], [3,4])).toBe(false);
});

test(`can concat`, ()=>{
  expect(canConcatenate([1,2,3], [3,2,1])).toBe(true)
})
