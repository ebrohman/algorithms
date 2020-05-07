function boxBlur(image) {
    let container = [];

    for(let h=1; h < image.length - 1; h++) {
        let row = [];

        for(let w=1; w < image[0].length - 1; w++) {
            let sum = 0;
            for(let hh = -1; hh <= 1; hh++) {
                for(let ww = -1; ww <= 1; ww++) {
                    sum += image[h + hh][w + ww]
                }
            }
            row.push(Math.floor(sum/9));
        }
        container.push(row)
    }
    return container;
}



test(`can blur`, () => {
    let image = [[1, 1, 1],
                 [1, 7, 1],
                 [1, 1, 1]]

    expect(boxBlur(image)).toEqual([[1]])
});


test(`can blur`, ()=>{
    let image = [[36,0,18,9],
                 [27,54,9,0],
                 [81,63,72,45]]

    expect(boxBlur(image)).toEqual([[40,30]])
});
