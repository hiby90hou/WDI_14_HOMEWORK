var arr = ["a","b","c"];

// Add an element to the back of an array.
arr.push("d");
// Remove an element from the back of an array.
arr.pop();
// Add an element to the front of an array.
arr.unshift("z");
// Remove an element from the front of an array.
arr.shift();
// Concatenates all the elements in an array into a string.
var str = arr.join(' ');
// Separates the characters of a string into an array. This one is a string method.
var newStr = str.split(' ');

var numbers = [2, 4, 6, 8]
numbers.pop()
numbers.push(10)
numbers.unshift(3)

// Answer:
// [3,2,4,6,10]

var morse = ["dot", "pause", "dot"]
var moreMorse = morse.join(" dash ")
moreMorse.split(" ")

// Answer:
// ["dot","dash","pause","dash","dot"]

var bands = []
var beatles = ["Paul", "John", "George", "Pete"]
var stones = ["Brian", "Mick", "Keith", "Ronnie", "Charlie"]
bands.push(beatles)
bands.unshift(stones)
bands[bands.length - 1].pop()
bands[0].shift()
bands[1][3] = "Ringo"

// Answer:
// [["Mick", "Keith", "Ronnie", "Charlie"],["Paul", "John", "George","Ringo"]]

