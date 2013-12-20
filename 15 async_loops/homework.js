// @annotation:tour async_loops

// Write your code below
// Once you are done (try to avoid looking at it beforehand) you can
// refer to solution.js to see our suggested solution


function loadUsers(userIds, load, done) {
  var users = []
  for (var i = 0; i < userIds.length; i++) {
    users.push(load(userIds[i]))
  }
  return users
}

module.exports = loadUsers


