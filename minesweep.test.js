function minesweeper(matrix) {
  let container = [];
  for(let h=0; h<matrix.length; h++) {
    let row = []
    for(let w=0; w<matrix[0].length; w++) {
      let bools = [
                    matrix[h - 1] == undefined ? false : [matrix[h - 1][w], matrix[h - 1][w + 1], matrix[h - 1][w - 1]],
                    matrix[h + 1] == undefined ? false : [matrix[h + 1][w + 1], matrix[h + 1][w], matrix[h + 1][w -1]],
                    matrix[h][w + 1],
                    matrix[h][w-1]
                  ];

      let flattened = [].concat(...bools).filter(x => !x == undefined || !x == false)
      let sum = flattened.length;
      row.push(sum);
    }

    container.push(row);
  }
  return container;
}


test(`can sweep`, ()=>{
  let matrix =[[true, false, false],
               [false, true, false],
               [false, false, false]]

  expect(minesweeper(matrix)).toEqual([[1, 2, 1],
                                       [2, 1, 1],
                                       [1, 1, 1]])
});

test(`can sweep`, ()=>{
  let matrix = [[true,false,false,true],
                [false,false,true,false],
                [true,true,false,true]];


  expect(minesweeper(matrix)).toEqual([[0,2,2,1],
                                       [3,4,3,3],
                                       [1,2,3,1]])
});
