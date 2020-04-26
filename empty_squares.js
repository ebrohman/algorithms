// In the image below, squares are either empty or filled with a circle.

// Create a function that takes a number step (which equals HALF the width of a
// square) and returns the amount of empty squares. The image shows the squares
// with step 1, 2 and 3. The return value is the number of cells not on a diagonal,
// which is 0 for the first square, 8 for the second, and 24 for the third.


function emptSq(num) {
  return(num * (num - 1)) * 4
}
