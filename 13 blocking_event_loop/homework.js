// @annotation:tour blocking_event_loop

// Write your code below
// Once you are done (try to avoid looking at it beforehand) you can
// refer to solution.js to see our suggested solution


function repeat(operation, num) {
  // modify this so it can be interrupted
  if (num <= 0) return
  operation()
  return repeat(operation, --num)
}

module.exports = repeat


