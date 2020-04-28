// Sum of Missing Numbers
// Create a function that returns the sum of missing numbers.

// Examples
// sumMissingNumbers([1, 3, 5, 7, 10]) ➞ 29
// 2 + 4 + 6 + 8 + 9

// sumMissingNumbers([10, 7, 5, 3, 1]) ➞ 29

// sumMissingNumbers([10, 20, 30, 40, 50, 60]) ➞ 1575

function sumMissingNumbers(ary) {
  let max = Math.max(...ary);
  let min = Math.min(...ary);
  let container = [];

  for(let i=min; i < max; i++) {
    if(!ary.includes(i)) { container.push(i) }
  }

  return container.reduce((a,v) => { return a + v }, 0);
}

test(``, ()=>{
  expect(sumMissingNumbers([10, 20, 30, 40, 50, 60])).toEqual(1575)
})
