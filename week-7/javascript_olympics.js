// JavaScript Olympics

// I paired [with: Logan Bresnahan] on this challenge.

// This challenge took me [1.5] hours.

// Bulk Up


var array = [
  ["Sarah Hughes", "Ladies\' Singles"],
  ["Michael Phelps", "Freestyle"],
];
var win = function(test){
  for(var counter = 0; counter <= array.length - 1; counter ++){
    console.log(test[counter][0] + " just won " + test[counter][1]);
  }
}

win(array);

// Jumble your words
var jumble = function(string){
  console.log(string.split(['']).reverse().join(['']));
}
jumble("hello");


// 2,4,6,8
var evens = function(numbers){
  for(var numcounter = 0; numcounter <= numbers.length - 1; numcounter ++){

    if (numbers[numcounter] % 2 === 0){
    console.log(numbers[numcounter]);
      }
  }
}

evens([1, 2]);

// "We built this city"

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.sport = sport;
  this.quote = quote;
}
// Reflection

/*

What JavaScript knowledge did you solidify in this challenge?

Various syntax information as well as clarification on the tools javascript lets you use. I got more information on constructors as well.

What are constructor functions?

Constructor functions are sort of like classes in Ruby. You are defining a variable with a predetermined set of characteristics.

How are constructors different from Ruby classes (in your research)?

Constructors don't have access to things like attr_reader, writer, or accessor. Reader is in a way built in, but it doesn't function the same way. Constructors don't have instance variables from what I have seen thus far.



*/