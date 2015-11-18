//votecount[president] = "name"

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


// function Student(president, vice_president, secretary, treasurer){
//   this.president = 0;
//   this.vice_president = 0;
//   this.secretary = 0;
//   this.treasurer = 0;
// }


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// Create a for...in loop that iterates through the votes object and initializes the list of names at 0.

//The following for...in loop tallys the votes by incrementing the value corresponding to each name.

//For each position, another for...in loop is used to check the values and put the appropriate name into the officers object. Return officer positions.


// __________________________________________
// Initial Solution
// var tallyVotes = function(){
// for (var key in votes){
//   voteCount["president"][votes[key]["president"]] = 0;
//   voteCount["vicePresident"][votes[key]["vicePresident"]] = 0;
//   voteCount["secretary"][votes[key]["secretary"]] = 0;
//   voteCount["treasurer"][votes[key]["treasurer"]] = 0;
//   }
//   countVotes();
// }

// var countVotes = function(){
// for (var key in votes){
//   voteCount["president"][votes[key]["president"]] ++;
//   voteCount["vicePresident"][votes[key]["vicePresident"]] ++;
//   voteCount["secretary"][votes[key]["secretary"]] ++;
//   voteCount["treasurer"][votes[key]["treasurer"]] ++;
//   }
//   console.log(voteCount);
//   listWinners();
// }


// var listWinners = function(){
// for (var key in voteCount["president"]){
//   if (voteCount["president"][key] > 9){
//     officers["president"] = key;
//     console.log(officers);
//   }
// }

// for (var key in voteCount["vicePresident"]){
//   if (voteCount["vicePresident"][key] > 9){
//     officers["vicePresident"] = key;
//     console.log(officers);
//   }
// }

// for (var key in voteCount["secretary"]){
//   if (voteCount["secretary"][key] > 9){
//     officers["secretary"] = key;
//     console.log(officers);
//   }
// }

// for (var key in voteCount["treasurer"]){
//   if (voteCount["treasurer"][key] > 9){
//     officers["treasurer"] = key;
//     console.log(officers);
//   }
// }
// }

// console.log(tallyVotes());



// __________________________________________
// Refactored Solution

var election = function(){

for (var key in votes){
  voteCount["president"][votes[key]["president"]] = 0;
  voteCount["vicePresident"][votes[key]["vicePresident"]] = 0;
  voteCount["secretary"][votes[key]["secretary"]] = 0;
  voteCount["treasurer"][votes[key]["treasurer"]] = 0;
  }

for (var key in votes){
  voteCount["president"][votes[key]["president"]] ++;
  voteCount["vicePresident"][votes[key]["vicePresident"]] ++;
  voteCount["secretary"][votes[key]["secretary"]] ++;
  voteCount["treasurer"][votes[key]["treasurer"]] ++;
  }



for (var key in voteCount["president"]){
  if (voteCount["president"][key] > 9){
    officers["president"] = key;
  }
}

for (var key in voteCount["vicePresident"]){
  if (voteCount["vicePresident"][key] > 9){
    officers["vicePresident"] = key;
  }
}

for (var key in voteCount["secretary"]){
  if (voteCount["secretary"][key] > 9){
    officers["secretary"] = key;
  }
}

for (var key in voteCount["treasurer"]){
  if (voteCount["treasurer"][key] > 9){
    officers["treasurer"] = key;
    console.log(officers);
  }
}


}
election();





// __________________________________________
// Reflection

/*

What did you learn about iterating over nested objects in JavaScript?

Iterating over nested objects takes some time. Having that object be properly formatted and taking time to think of the proper syntax is important. Bracket notation is easier because it helps to more clearly separate the object and the levels you are going through.

Were you able to find useful methods to help you with this?

The For...in loop was essentially the most helpful thing used. Aside from that I didn't use anything new really.

What concepts were solidified in the process of working through this challenge?

Javascript syntax was solidified. Specifically, the concept of bracket notation with objects makes a lot more sense now. I feel more comfortable with function calls, for loops, and nested objects.


*/



// __________________________________________
// Test Code:  Do not alter code below this line.

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
