
//comment example
VAR pokemonChosen = ""
VAR myVariable = false
VAR myIntVariable = 4
VAR showChoiceIfTrue = true
VAR showAltChoiceIfTrue = false
You run. You run to feel alive. You run away from...
Something. What are you runnign from?
    * people -> people_problems
    * humans -> people_problems
        peopel suck
   

=== people_problems

yah people really suck. But what sucks more than people? #speaker:Reid
    * your mom[she sucks hard]->parents_suck
    * your dad[he really sucks]like really sucks->parents_suck

===parents_suck ===
okay so parents suck in general #speaker:Mari

    * I don't have everything ->love
    * I want to see the world burn ->burn

===love
hugs and kisses for everyone
    +[hugs] You get a hug->hug
    +[kisses] You get a kiss followed by a hug.->hug

===burn
sounds like you need a hug
    * hug[.] I want to world to burn slightly less->hug 

===hug
time to choose a pokemon and test a loop
    * pick a pokemon->pokemon

===pokemon
Which pokemon do you choose?
    * [charamader]
        ~pokemonChosen ="Charamander"
            ** You chose the one every basic bitch chooses. 
            ** Oh wow, the fire one.
            -- You and charamander can enjoy vanilla ice cream and honeydo bubble tea together.
            ->pokemon_chosen
    * [Squirtle]
        ~ pokemonChosen = "Squirtle"
            * * No a bad choice. No great, but not bad.
            ->pokemon_chosen
    * [Bulbasaur]
        ~ pokemonChosen = "Bulbasaur"
            ** You chose literally the worst one. It's good against the first gym but grass has so many weaknesses!
            ->pokemon_chosen
            

-great choice, you little bitch->DONE

    
===pokemon_chosen
You chose {pokemonChosen}!
{myVariable: Your pokemon gives you a hug. Text when condition is true|Your pokemon gives you a kiss. Text when condition is false}
{myIntVariable < 5: 
    This is writen if varialbe is true
    - else:
        otherwise this is written. 
}

* {showChoiceIfTrue} [This choice shows if varialbe is true]->pokemon_chosen
* {showAltChoiceIfTrue} [This choice shows if variable is true, but it's currently set to false]->pokemon_chosen

+ [How many turns]
    {TURNS()}

->pokemon_chosen


->END