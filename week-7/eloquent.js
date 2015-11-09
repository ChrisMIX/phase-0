// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var my_age = 22;
my_age ++

//Favorite Food

//prompt("What's your favorite food?")
//alert("That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for(var triangle = "#"; triangle.length <= 7;triangle = triangle + "#")
console.log(triangle);

// Functions

// Complete the `minimum` exercise.

function min(x, y) {

(x < y) ? console.log(x) : console.log(y);
}

console.log(min(1, 0))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {

name: "Chris",
age: 22,
favorite_foods: ["pizza", "pasta", "sandwiches"],
quirk: "I collect figurines"

}