@annotation:tour hello_world
#1. Hello World
##Challenge
Write a function that takes an input string and returns it uppercased.

###Arguments

- `input`: a String of random words (lorem ipsum).

@annotation:tour higher_order_functions
#2. Higher Order Functions
##Challenge
A higher-order function (also functional form, functional or functor) is a function that does at least one of the following:

- take one or more functions as an input
- output a function

All other functions are first order functions. [1]

Implement a higher-order function that takes a function and calls it 'n' times.

###Hint
Use recursion.

It's ok to use a loop in your implementation, bonus points if you don't.

###Arguments
- `operation`: A Function, takes no arguments, returns no useful value.
- `num`: the number of times to call `operation`

###Documentation
- [Higher Order Functions on Wikipedia](https://en.wikipedia.org/wiki/Higher-order_function)


@annotation:tour basic_map
#Basic: Map
##Challenge
Convert the following code from a for-loop to Array#map:

    function doubleAll(numbers) {
      var result = []
      for (var i = 0; i < numbers.length; i++) {
        result.push(numbers[i] * 2)
      }
      return result
    }
    
    module.exports = doubleAll


###Arguments
- `numbers`: An Array of 1 to 20 Integers between 0 and 9

###Conditions
- Do not use any for/while loops.
- You do not need to define any additional functions unless a stub is provided in the boilerplate.
- Your solution should use [`Array.prototype.map()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)

###Documentation
- [Array.map()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)


@annotation:tour basic_filter
#3. Basic: Filter
##Challenge
Use [Array#filter](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter) to write a function called `getShortMessages`.

`getShortMessages` takes an array of objects with `.message` properties and prints any messages that are *less than < 50 characters long*.

###Arguments
- `messages`: an Array of 10 to 100 random objects that look something like this:

      {
        message: 'Esse id amet quis eu esse aute officia ipsum.' // random
      }

###Conditions
- Do not use for loops or Array#forEach.

###Hint
Try chaining some Array methods!

###Expected Output
The output should be an array containing the messages themselves, without their containing object. e.g.

    [ 'Tempor quis esse consequat sunt ea eiusmod.',
      'Id culpa ad proident ad nulla laborum incididunt.',
      'Ullamco in ea et ad anim anim ullamco est.',
      'Est ut irure irure nisi.' ]

###Documentation
- [Array.filter()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter)
- [Array.map()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)


@annotation:tour basic_every_some
#5. Basic: Every Some
##Challenge
Return a function that takes a list of valid users, and returns a function that returns `true` if all of the supplied users exist in the original list of users.

You only need to check that the ids match.

###Example
    var goodUsers = [
      { id: 1 },
      { id: 2 },
      { id: 3 }
    ]
    
    // `checkUsersValid` is the function you'll define
    var testAllValid = checkUsersValid(goodUsers)
    
    testAllValid([
      { id: 2 },
      { id: 1 }
    ])
    // => true
    
    testAllValid([
      { id: 2 },
      { id: 4 },
      { id: 1 }
    ])
    // => false

###Arguments
- `goodUsers`: a list of valid users

Use [array#some](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/some) and [Array#every](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/every) to check every user passed to your returned function exists in the array passed to the exported function.

###Documentation
- [Array.every()](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/every)
- [Array.some()](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/some)


@annotation:tour basic_reduce
#6. Basic: Reduce
##Challenge
Given an Array of strings, use [Array#reduce](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce) to create an object that contains the number of times each string occured in the array. Return the object directly (no need to console.log).

###Example
    
    var inputWords = ['Apple', 'Banana', 'Apple', 'Durian', 'Durian', 'Durian']
    
    console.log(countWords(inputWords))
    
    // =>
    // {
    //   Apple: 2,
    //   Banana: 1,
    //   Durian: 3
    // }

###Arguments
- `inputWords`: An array of random Strings.

###Conditions
- Do not use any for/while loops.
- You do not need to define any additional functions unless a stub is provided in the boilerplate.

###Documentation
- [Higher order functions in Wikipedia](https://en.wikipedia.org/wiki/Reduce_(higher-order_function))
- [Array.reduce()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)


@annotation:tour basic_recursion
#7. Basic: Recursion
Recursion is a fundamental programming concept which can lead to elegant and efficient solutions to algorithmic problems. In fact, recursion is so powerful, all iterating behaviour can be defined using recursive functions. You will find recursion indispensable when iterating over nested data structures. 
 
A recursive function is a function which calls itself. For example, this recursive function will take an array of words, and return an array of those words, uppercased. 
 
    function toUpperArray(items) { 
       if (!items.length) return []             // end condition 
       var head = items[0]                      // item to operate on 
       head = head.toUpperCase()                // perform action 
       var tail = items.slice(1)                // next 
       return [head].concat(toUpperArray(tail)) // recursive step 
    } 
     
    toUpperArray(['hello', 'world']) // => ['HELLO', 'WORLD'] 
 
The point of this exercise is to familiarise yourself with recursion by implementing a familiar interface using a recursive function. 
 
 
###Challenge
Implement [Array#reduce](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce) using recursion. 
 
To test your reduction works correctly we will use your reduce implementation to execute our solution to the previous Basic: Reduce problem. i.e. your reduce function will be passed an array of words, and a function, and an initial value which will return an object containing the counts for each word found in the array. You don't need to implement this functionality, it will be supplied to your reduce implementation. 
 
For simplicity, your implementation of reduce **need not replicate the behaviour of a reduce missing an initial value**. You may assume the initial value will always be supplied. 
 
###Arguments 
- `arr`: An Array to reduce over 
- `fn`: Function to use as the reduction step.  Like regular [Array#reduce](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce), this function must be passed `previousValue`, `currentValue`, `index` and the array we're iterating over. 
- `init`: Initial value of the reduction. Unlike [Array#reduce](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce), this value is required (and you may assume it will always be supplied). 
 
###Example 
 
    // Your reduce function should behave the same as a 
    // regular Array#reduce, but it will take the array 
    // to operate on as the first argument: 
     
    reduce([1,2,3], function(prev, curr, index, arr) { 
      return prev + curr 
    }, 0) 
    // => 6 
 
###Conditions 
- Do not use any for/while loops. 
- Do not use any Array methods like map or reduce. 
 
###Documentation 
- [Recursion in Wikipedia](https://en.wikipedia.org/wiki/Recursion)
- [Array.reduce()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)
 

@annotation:tour basic_call
#8. Basic: Call
JavaScript implements 'duck' typing. Duck typing is a style of dynamic typing in which an object's methods and properties determine the valid semantics, rather than its inheritance from a particular class or implementation of a specific interface. The name of the concept refers to the duck test, attributed to James Whitcomb Riley, which may be phrased as follows:

    "When I see a bird that walks like a duck and swims like a duck and quacks like a duck, I call that bird a duck"

In JavaScript, in order to write robust programs we sometimes need to check an object conforms to the type that we need.

We can use [Object#hasOwnProperty](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/hasOwnProperty) to detect if an object 'has' a property defined on itself (i.e. not inherited from its prototype):

    var duck = {
      quack: function() {
        console.log('quack')
      }
    }
    
    duck.hasOwnProperty('quack') // => true

We didn't give the duck a [`.hasOwnProperty`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/hasOwnProperty) method, where did it come from?

Duck was created with the `{}` syntax, and as such it inherits from Object.prototype:

    var object = {quack: true}
    
    Object.getPrototypeOf(object) === Object.prototype // => true
    object.hasOwnProperty('quack')                     // => true

But what if an object doesn't inherit from Object.prototype?

    // create an object with 'null' prototype.
    var object = Object.create(null)
    object.quack = function() {
      console.log('quack')
    }
    
    Object.getPrototypeOf(object) === Object.prototype // => false
    Object.getPrototypeOf(object) === null             // => true
    
    object.hasOwnProperty('quack')
    // => TypeError: Object object has no method 'hasOwnProperty'

We can still use `hasOwnProperty` from the `Object.prototype` though, if we call it with the `this` value set to something that 'looks like
an object'. Function#call allows us to invoke any function with an altered `this` value.

    // the first argument to call becomes the value of `this`
    // the rest of the arguments are passed to the function as per
    
    Object.prototype.hasOwnProperty.call(object, 'quack') // => true

###Challenge
Write a function `duckCount` that returns the number of arguments passed to it which have a property 'quack' defined directly on them. Do not match values inherited from prototypes.

Example:

    var notDuck = Object.create({quack: true})
    var duck = {quack: true}
    duckCount(duck, notDuck) // 1

###Arguments
- You will be passed 0-20 arguments. Each argument could be of any type with any properties. Some of these items will have a 'quack' property.

###Conditions
- Do not use any for/while loops.
- Do not create any counter/accumulator variables.
- You do not need to define any additional name functions unless a stub is provided in the boilerplate.

###Hint
- The arguments variable, available in every function, is an object that quacks like an Array:

    {
      0: 'argument0',
      1: 'argument1', // etc
      length: 2
    }

###Documentation
- [Call](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/call)
- [hasOwnProperty](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/hasOwnProperty)
- [in operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/in)
- [slice array like objects](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice#Array-like)
- [Arguments](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions_and_function_scope/arguments)


@annotation:tour partial_application_without_bind
#9. Partial application without bind
[Partial application](https://en.wikipedia.org/wiki/Partial_application) allows you create new functions from existing functions, while fixing some number of arguments. After setting the arguments to be partially applied, you get a new function ready to take the rest of the arguments and perhaps execute the original
function.

More formally: [Partial application](https://en.wikipedia.org/wiki/Partial_application) refers to the process of fixing a number of arguments to a function, producing another function of smaller arity.

As an example, say we have a function `add`, that takes 2 arguments and adds them together:

    function add(x, y) {
      return x + y
    }
    
    add(10, 20) // => 30

Now, pretend we have a function `partiallyApply`. `partiallyApply` takes a function, and some arguments to 'partially apply'.

Here we 'partially apply' the first parameter, `x`, of our `add` function:

    var addTen = partiallyApply(add, 10) // fix `x` to 10

`addTen` is a new function that takes the `y` parameter of `add`. `add` has not yet been called!

Once we pass the argument for `y`, we can execute the original `add` function:

    addTen(20) // => 30
    addTen(100) // => 110
    addTen(0) // => 10
    
    // etc

All of the above examples are same as calling `add(10, y)`, where `y` was supplied in the call to the appropriately named `addTen`.

###Challenge
Implement a logging function that prepends a namespace string to its output.

Your implementation should take a namespace string, and return a function that prints messages to the console with the namespace prepended.

Make sure *all* arguments passed to the returned logging function are printed.

** Print the output to the console directly **

###Arguments
- `namespace`: a String to prepend to each message passed to the returned function.

###Example

    var info = logger('INFO:')
    info('this is an info message')
    // INFO: this is an info message
    
    var warn = logger('WARN:')
    warn('this is a warning message', 'with more info')
    // WARN: this is a warning message with more info

###Conditions
- Do not use Function#bind

###Hints
Remember `console.log` takes any number of arguments and prints them, separated by spaces:

    console.log('hello', 'world') // => 'hello world'
    console.log(1,2,3) // => 1 2 3

We simply want to 'partially apply' the first argument to `console.log`.

[`Function.prototype.apply`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/apply) allows us to execute a function, supply a new 'value for this' (we can ignore in this case), and then *an array of arguments to apply to the function*:

    add(10, 20) // => 30
    add.apply(null, [10, 20]) // => 30

Also contrast `apply` with `Function.prototype.call`:

    add.apply(null, [10, 20]) // => 30
    add.call(null, 10, 20) // => 30

###Documentation
- [Partial Applicationon Wikipedia](https://en.wikipedia.org/wiki/Partial_application)
- [apply()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/apply)


@annotation:tour partial_application_with_bind
#10. Partial application with bind
Use [Function#bind](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind) to implement a logging function that allows you to namespace messages.

Your implementation should take a namespace string, and return a function that prints messages to the console with the namespace prepended.

Make sure *all* arguments passed to the returned logging function are printed.

** Print the output to the console directly **

###Arguments
- `namespace`: a String to prepend to each message passed to the returned function.

###Example
    
    var info = logger('INFO:')
    info('this is an info message')
    // INFO: this is an info message
    
    var warn = logger('WARN:')
    warn('this is a warning message', 'with more info')
    // WARN: this is a warning message with more info

###Conditions
- Use [Function#bind](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind)



###Documentation
- [Function.bind()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind)


@annotation:tour implement_map_with_reduce
#11. Implement map with reduce
Use [Array#reduce](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/Reduce) to implement a simple version of Array#map.

### Expected Output
A function `map` that applies a function to each item in an array and collects the results in a new Array.
    
    var nums = [1,2,3,4,5]
    
    // `map` is your exported function
    var output = map(nums, function double(item) {
      return item * 2
    })
    
    console.log(output) // => [2,4,6,8,10]

###Input
- `input`: an arbitrary Array of any type.
- `operation`: an arbitrary Function which can be applied to items in `input`.

###Documentation
- [Higher Order Function on Wikipedia](https://en.wikipedia.org/wiki/Reduce_(higher-order_function))
- [Array.reduce()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/Reduce)


@annotation:tour function_spies
#12. Function Spies
Override a specified method of an object with new functionality while still maintaining all of the old behaviour.

Create a spy that keeps track of how many times a function is called.

###Example

    var spy = Spy(console, 'error')
    
    console.error('calling console.error')
    console.error('calling console.error')
    console.error('calling console.error')
    
    console.log(spy.count) // 3

###Arguments
- `target`: an object containing the method `method`
- `method`: a string with the name of the method on `target` to spy on.

###Conditions
- Do not use any for/while loops.
- You do not need to define any additional functions unless a stub is provided in the boilerplate.

###Hint
- Functions have context, input and output. Make sure you match the context, the input to *and output from* the function you are spying on.


@annotation:tour blocking_event_loop
#13. Blocking Event Loop
###Challenge
Modify the recursive `repeat` function provided in the boilerplate, such that it does not block the event loop (i.e. [Timers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Timers) and IO handlers can fire). This necessarily requires repeat to be asynchronous.

A timeout is queued to fire after 1 second, which will print the results of the test and exit the process. `repeat` should release control of the event loop such that the timeout fires before 1500 milliseconds elapse.

Try to perform as many operations as you can before the timeout fires!

###Hint
- If your program takes a long time to run, something is probably wrong. Use Control - C to kill the node process.

###Documentation
- [Timers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Timers)


@annotation:tour trampoline
#14. Trampoline
###Challenge
The boilerplate includes a definition of `repeat`. `repeat` will take a Function operation, and a Number num, and invoke operation num times:
    
    var count = 0
    repeat(function() {
      count++
    }, 100)
    
    console.log('executed %d times.', count)
    // => executed 100 times.

BUT note that executing `repeat` with a large `num` causes a stack overflow:

    var count = 0
    repeat(function() {
      count++
    }, 100000)
    
    console.log('executed %d times', count)
    // => RangeError: Maximum call stack size exceeded

###Challenge
Modify the boilerplate below such that it uses a trampoline to continuously call itself synchronously.

You can assume that the operation passed to repeat does not take arguments (or they are already bound to the function) and the
return value is not important.

###Conditions
- Do not change the implementation of repeat to include any loops (you may change it in other ways though).

###Hints
- Modify `repeat` so it returns the 'next step', if there is one.
- A trampoline continues to synchronously execute steps, getting new steps, until there are no more steps. You can use a loop here!
- If your program takes a long time to run, something is probably wrong. Use `Ctrl+c` to kill the node process.


@annotation:tour async_loops
#15. Async Loops
This code is broken!

A Java developer has committed this terrible code to our codebase and didn't test it!

    function loadUsers(userIds, load, done) {
      var users = []
      for (var i = 0; i < userIds.length; i++) {
        users.push(load(userIds[i]))
      }
      return users
    }
    
    module.exports = loadUsers

###Challenge
Fix this code! The callback should be called with all the users loaded.

The order of the users should match the order of supplied user ids. Because this function is asynchronous, we do not care about its return value.

###Arguments
- `userIds`: an Array of numeric user ids.
- `load`: a Function used to load user objects. Expects a numeric id and a callback. The callback will be called with the result of loading the user with the specified id (either a user object or null).
- `done`: a Function that expects an Array of user objects (as retrieved from `load`).

###Conditions
- Do not use any for/while loops.
- The order of the results in `done` must be the same as they were specified in `userIds`.
- Users should be loaded in parallel i.e. the entire job should not take more than 1 second.

###Hint
- You don't need to use a sort to maintain ordering.


@annotation:tour recursion
#16. Recursion
###Challenge
Implement a recursive function that returns all of the unique dependencies, and sub-dependencies of a module, sorted alphabetically. Dependencies should be printed as dependency@version e.g. 'inflection@1.2.6'. Multiple versions of the same module are allowed, but duplicates modules of the same version should be removed.

###Arguments
- `tree`: A dependency tree. See below for an example of the structure. 

###Example
    
    var loremIpsum = {
      "name": "lorem-ipsum", 
      "version": "0.1.1",
      "dependencies": {
        "optimist": {
          "version": "0.3.7",
          "dependencies": {
            "wordwrap": {
              "version": "0.0.2"
            }
          }
        },
        "inflection": {
          "version": "1.2.6"
        }
      }
    }
    
    getDependencies(loremIpsum) // => [ 'inflection@1.2.6', 'optimist@0.3.7', 'wordwrap@0.0.2' ]

###Conditions
- Do not use any for/while loops.

###Documentation
- [keys](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys)


@annotation:tour currying
#17. Currying
This is an example implementation of `curry3`, which curries up to 3 arguments:

    function curry3(fun){
      return function(three){
        return function(two){
          return function (one){
            return fun(one, two, three)
          }
        }
      }
    }

If we were to use this implementation with this sample function:

    function abc(one, two, three) {
      return one/two/three
    }

It would work like so:

    var curryC = curry3(abc)
    var curryB = curryC(2)
    var curryA = curryB(3)
    
    console.log(curryA(6)) // => 1

###Challenge
In this challenge, we're going to implement a [curry](http://en.wikipedia.org/wiki/Currying) function for an arbitrary number of arguments.

`curryN` will take two parameters:

- `fn`: The function we want to curry.
- `n`: Optional number of arguments to curry. If not supplied, `curryN` should use the fn's [arity](http://en.wikipedia.org/wiki/Arity) as the value for `n`.

###Example
    
    function add3(one, two, three) {
      return one + two + three
    }
    
    var curryC = curryN(add3)
    var curryB = curryC(1)
    var curryA = curryB(2)
    console.log(curryA(3)) // => 6
    console.log(curryA(10)) // => 13
    
    console.log(curryN(add3)(1)(2)(3)) // => 6

###Hint 
- You can detect the number of expected arguments to a function (it's [arity](http://en.wikipedia.org/wiki/Arity)) by checking a function's .length property.


@annotation:tour function_call
#18. Function Call
###Challenge
Write a function that allows you to use [`Array.prototype.slice`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice) without using `.call` to invoke it.

Normally you have to use slice with call or apply:

    var slice = Array.prototype.slice
    
    function() {
      var args = slice.call(arguments) // this works
    }

We want this to work:

    var slice = yourFunction
    
    function() {
      var args = slice(arguments) // this works
    }

###Expected Output
A function, `slice` that exhibits the following behaviour:

    var nums = [1,2,3,4,5]
    
    // your slice function should match the regular
    // behaviour of slice, except it takes the array
    // as the first arguments
    
    slice(nums, 0, 2) // [1, 2]
    slice(nums, 1, 2) // [2]
    
    // regular slice usage for comparison
    nums.slice(0, 2) // [1, 2]
    nums.slice(1, 2) // [2]

###Conditions
- Do not use the `function` keyword :D

###Hints
- This is absolutely a one liner.
- Every JavaScript Function inherits methods such as call, apply and bind from the object `Function.prototype`.
- Function#call executes whatever the value of `this` when it's invoked. e.g. someFunction.call() // `this` inside `call` is `someFunction`
- Function.call itself is a function thus it inherits from `Function.prototype`

    var myFunction() {
      console.log('called my function')
    }

    Function.prototype.call.call(myFunction) // => "called my function"


