function getLength(ary) {
  let count = 0;

  ary.forEach(el => {
    if(Array.isArray(el)){
      count += getLength(el)
    } else {
      count ++
    }
  })

  return count;
}


function getLength(arr) {
  return arr.flat(Infinity).length;
}
