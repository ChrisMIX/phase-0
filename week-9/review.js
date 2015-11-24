//PSEUDOCODE
/*

Create three variables to store the final result for the mode, the highest frequency thus far, and the frequency of the current number being checked.

The array should be sorted so you can check each number in order.

A Loop should be used to check the frequency of each number and compare it with that of previous numbers. At the end the number with the greatest frequency should be returned.

*/


var frequency = 0;
var leader = 0;
var max = 0;

var mode = function(array){
  array.sort();
  for(var counter = 0; counter < array.length; counter++){


    if(array[counter] = array[counter + 1]){
      frequency ++;

    }

    else{

      frequency = 0;
    }

    if(frequency > leader){
      winner = leader;
      max = array[counter];

    }
  }
  console.log(max);
}

/*

What concepts did you solidify in working on this challenge?

I solidified plenty of javascript syntax in addition to for loops, if/else statements, and proper function notation. Overall I just feel a lot better about javascript.

What was the most difficult part of this challenge?

The most difficult part of this challenge was thinking up the way this problem would work out in my head. Javascript doesn't have all of the same resources that ruby does, so I had to get a bit more creative.

Did you solve the problem in a new way this time?

In some respects I solved this problem in a different way, but the core goal is the same. Loops and arrays were still fairly important.

Was your pseudocode different from the Ruby version? What was the same and what was different?

The pseudocode was mostly the same. In theory, you have the same goal regardless of the language.


*/
