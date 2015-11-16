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
  function Combatant(health, attack, defense, level, weapon){
    this.health = health;
    this.attack = attack;
    this.defense = defense;
    this.level = level;
    this.weapon = weapon;
  }

  function Weapon(strength){
    this.strength = strength;
  }

  var Hero = new Combatant(150, 10, 0, 1);
  var Dragon = new Combatant(200, 5, 0, 1);
  var Sword = new Weapon(5);
  var Bow = new Weapon(1);

  var levelup = function(){
    console.log("*trumpets blaring* Your level has grown to 2! Your defense is now 1. Hot dog!");
    Hero.defense = 1;
    Hero.level = 2;
  }

  var gameover = function(){
    console.log("*Really sad downer music plays* The Dragon utterly decimated you. Tough luck bro. Did you ever really think there was a chance?")
  }

  var dracofight = function(){

    var weaponchoice = prompt("You have two weapons to choose from. Which do you pick? (1 for a broadsword of 5 attack power, and 2 for a bow of 1 attack power.")

      if(weaponchoice == 1){
        console.log("You chose to use the mighty broadsword. Very practical.")
        Hero.weapon = Sword;
      }

      else{
        console.log("You chose....the bow? Well hopefully you don't come to regret that decision.")
        Hero.weapon = Bow;
      }
      timetofight();
    }

    var timetofight = function(){


      var choice = prompt("You are now inside a well lit chamber. There is a rather large chandelier above what appears to be a hungry dragon. This doesn't look good. What do you do? (1 to attack, 2 to defend, 3 to choose arrow target(if bow was chosen))", "type here");

      if(choice == 1){

        console.log("You attack the dragon with all your might!")
        Dragon.health = Dragon.health - (Hero.attack + Hero.weapon.strength - Dragon.defense);
        console.log("Dragon Health:" + Dragon.health)

        if(Dragon.health <= 0){
          console.log("YOU DEFEATED THE DRAGON. LONG LIVE THE CHAMPION!!!");
          levelup();
        }

        else{
          console.log("It's the Dragon's turn. It takes a swipe at you and hits hard.");
          Hero.health = Hero.health - (Dragon.attack - Hero.defense);
          console.log("Player Health:" + Hero.health);
          if(Hero.health <= 0){
            gameover();
          }
          else{
            timetofight();
          }

        }
      }

      else if(choice == 2){
        console.log("You choose to brace for impact.");
        Hero.health = Hero.health - (Dragon.attack - Hero.defense);
        console.log("Player Health:" + Hero.health);

      }

      else if(choice == 3 && Hero.weapon == Bow){
        var target = prompt("Where would you like to aim? Oh and just fyi, the dragon is preparing to breathe some fire. This may be your only chance so use it well. Specify a location for the arrow. Use lowercase., target here")

        if(target == "chandelier"){
          console.log("Well too bad friend, the arrow....wait what? No way! You chose to shoot at the chandelier, which resulted in your arrow cutting the rope it was hanging by. The chandelier fell and killed the mighty dragon. Don't ask how. Just enjoy the victory.")
          levelup();
        }
        else{
          console.log("Your arrow doesn't hit anything. This doesn't look good...")
          gameover();
        }

      }
      else{
        console.log("Invalid input. Remember to only select 3 if you have the bow.")
        timetofight();
      }
    }
    dracofight();
//







// Refactored Code


  function Combatant(health, attack, defense, level, weapon){
    this.health = health;
    this.attack = attack;
    this.defense = defense;
    this.level = level;
    this.weapon = weapon;
  }

  function Weapon(strength){
    this.strength = strength;
  }

  var Hero = new Combatant(150, 10, 0, 1);
  var Dragon = new Combatant(200, 5, 0, 1);
  var Sword = new Weapon(5);
  var Bow = new Weapon(1);

  var levelup = function(){
    alert("*trumpets blaring* Your level has grown to 2! Your defense is now 1. Hot dog!");
    Hero.defense = 1;
    Hero.level = 2;
  }

  var gameover = function(){
    alert("*Really sad downer music plays* The Dragon utterly decimated you. Tough luck bro. Did you ever really think there was a chance?")
  }

  var dracofight = function(){

    var weaponchoice = prompt("You have two weapons to choose from. Which do you pick? (1 for a broadsword of 5 attack power, and 2 for a bow of 1 attack power.)")

      if(weaponchoice == 1){
        alert("You chose to use the mighty broadsword. Very practical.")
        Hero.weapon = Sword;
      }

      else{
        alert("You chose....the bow? Well hopefully you don't come to regret that decision.")
        Hero.weapon = Bow;
      }
      timetofight();
    }

    var timetofight = function(){


      var choice = prompt("You are now inside a well lit chamber. There is a rather large chandelier above what appears to be a hungry dragon. This doesn't look good. What do you do? (1 to attack, 2 to defend, 3 to choose arrow target(if bow was chosen))", "type here");

      if(choice == 1){

        alert("You attack the dragon with all your might!")
        Dragon.health = Dragon.health - (Hero.attack + Hero.weapon.strength - Dragon.defense);

        if(Dragon.health <= 0){
          alert("YOU DEFEATED THE DRAGON. LONG LIVE THE CHAMPION!!!");
          levelup();
        }

        else{
          alert("It's the Dragon's turn. It takes a swipe at you and hits hard.");
          Hero.health = Hero.health - (Dragon.attack - Hero.defense);
          alert("Player Health:" + Hero.health + "Dragon Health:" + Dragon.health);
          if(Hero.health <= 0){
            gameover();
          }
          else{
            timetofight();
          }

        }
      }

      else if(choice == 2){
        alert("You choose to brace for impact.");
        Hero.health = Hero.health - (Dragon.attack - Hero.defense);
        alert("Player Health:" + Hero.health);
        timetofight();

      }

      else if(choice == 3 && Hero.weapon == Bow){
        var target = prompt("Where would you like to aim? Oh and just fyi, the dragon is preparing to breathe some fire. This may be your only chance so use it well. Specify a location for the arrow. Use lowercase., target here")

        if(target == "chandelier"){
          alert("Well too bad friend, the arrow....wait what? No way! You chose to shoot at the chandelier, which resulted in your arrow cutting the rope it was hanging by. The chandelier fell and killed the mighty dragon. Don't ask how. Just enjoy the victory.")
          levelup();
        }
        else{
          alert("Your arrow doesn't hit anything. This doesn't look good...")
          gameover();
        }

      }
      else{
        alert("Invalid input. Remember to only select 3 if you have the bow.")
        timetofight();
      }
    }
    dracofight();

/*

// Reflection
//
What was the most difficult part of this challenge?


I had trouble figuring out a good way to reafactor. Also, getting my initial idea to work properly took multiple looks at syntax and the docs. After that, it became a matter of how far I wanted to go with it.

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