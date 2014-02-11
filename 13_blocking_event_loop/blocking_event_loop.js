// @annotation:tour blocking_event_loop
// 
// <-- click the blue icon in the gutter 
//     for instructions on this lesson
// 
// The README.md file contains complete instructions
// for using these tutorials.
// Then just start coding away in this file


function repeat(operation, num) {
  // modify this so it can be interrupted
  if (num <= 0) return
  operation()
  return repeat(operation, --num)
}

module.exports = repeat
