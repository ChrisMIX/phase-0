// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Fight and defeat a dragon using your wits and strength
// Goals: Defeat the dragon
// Characters: Dragon, Hero
// Objects: Combatant
// Functions: Fight, LevelUp

// Pseudocode
//
//Create an object called COMBATANT, that has HEALTH, ATTACK POWER, DEFENSE, and LEVEL attributes. Create two instances of this called HERO, and DRAGON.
//
//Initialize the game by explaining the situation you are in, and the actions you have available to you. You are then prompted for a course of action. You have the option to attack or defend. The resulting attack takes your attack power, minus the dragon's defense power and subtracts that from dragon health. The same is true if the dragon attacks. You can either win by recuding the dragon's hit points to zero, or lose by your own hit points reaching zero. Upon winning you level up and DEFENSE is changed.
//

// Initial Code
function Combatant(health, attack, defense, level){
  this.health = health;
  this.attack = attack;
  this.defense = defense;
  this.level = level;
}

var Hero = new Combatant(150, 20, 0, 1);
var Dragon = new Combatant(20, 150, 0, 1);

var levelup = function(){
  console.log("*trumpets blaring* Your level has grown to 2! Your defense is now 1. Hot dog!");
  Hero.defense = 1;
  Hero.level = 2;
}

var dracofight = function(){
  var choice = prompt("There is a hungry dragon. What do you do? (1 to attack, 2 to defend)", "type here");
  if(choice == 1){
    console.log("You attack the dragon with all your might!")
    Dragon.health = Dragon.health - Hero.attack;
    if(Dragon.health <= 0){
      console.log("YOU DEFEATED THE DRAGON. LONG LIVE THE CHAMPION!!!");
      levelup();
    }
    else{
      dracofight();
    }
  }
  else{
    console.log("You choose to brace for impact.");
    console.log("The Dragon attacks you for LOTS OF DAMAGE and you lose big time. Better luck next time friendo.")
  }

}
dracofight();
//







// Refactored Code




/*

// Reflection
//
What was the most difficult part of this challenge?


The most difficult thing was getting my initial idea to work properly. After that, it became a matter of how far I wanted to go with it.

What did you learn about creating objects and functions that interact with one another?

Creating objects and functions that work with each other is pretty intuitive, though incorporating a user into the mix with their own inputs took some research to figure out.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

I learned about prompt, which facilitates user input. It pulls up a field that allows the user to type a response, which then will affect the code in some way.

How can you access and manipulate properties of objects?

You can access them by writing the object name and the parameter you want.

*/
//
//
//
//
//
//