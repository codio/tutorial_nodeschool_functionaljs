function reduce(arr, fn, initial) {
  var arrlen = arr.length;
  return (function reduceOne(index, value) {
    if (index > arrlen - 1) return value
    return reduceOne(index + 1, fn(value, arr[index], index, arr))
  })(0, initial)
}

module.exports = reduce
