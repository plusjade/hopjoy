## Environment Setup
#### Step 1 
### Create the application skeleton.

Fire up your Text editor and Browser - we are going to code!

Your app should be self-contained folder. 
Create a folder in your home directory named: tic-tac-toe
Next create file inside this directory named index.html
Notice the .html extension.
Next create style.css file.
Next create an app.js file.

As a programmer, it is always helpful to be organized and very clear.
You can see the structure of your files, the names, and the extensions are all self-evident.
Your app environment layout (HTML) goes in the index.html file.
Your css goes in the style.css file.
Your javascript that powers your app goes in app.js

#### Step 2
### Load the app into the browser

Drag the index.html file into your browser window. The browser will automatically render the page as html
since the extension is .html. You should see the path to the file inside the url bar.
as well as "hello world" as the contents.
Your apps is now rendering in the browser!


#### Step 3
### Create the application environment Layout

*(Learning HTML is beyond the scope of this lesson. (Link) here to familiarize yourself
with the basic HTML tags. When you have successfully created some HTML pages you can return here.)

Open index.html in your text editor and enter the base markup for your application.
Define a div called with and id of "gameboard". This will be our tictactoe gameboard.
Inside the board you need to make some squares for the positions.

There are 9 squares on a tictactoe board so we'll define 9 divs to represent each square.

Link up your css and javascript documents respectively.

Reload your index.html in the browser. You should now see see more stuff.

#### Step 4
### Create a basic style for your application.

*(Learning CSS is beyond the scope of this lesson.(Link) here to practice some css styling commands,
then you can return here when you are all caught up!)

Open style.css and add in style commands for #gameboard.
We are goig to move it into the middle and assign it height/widght dimensions.

Style the squares:
Add a border.

Reload the browser page and make sure your app is updated with the styles.

#### Step 5 
### Powering Your Application with Javascript.
  
  
As you learned before we need javascript to respond to listen and respond to events
as well as update the DOM.

An amazing javascript framework exists to make these tasks much easier.
Introduction to Jquery:
What is a framework?
Benefits of jquery

As your skills develop you might be interested in learning how jquery works internally. (depth)

Load the jquery engine.

To make verify we jquery was loaded correctly we are going to test it in the console.
Verify and test, verify and test.

Fire up the Javascript console.
Enter $("div").html("Jquery Loaded!");
What happens?
You should see "Jquery Loaded" throughout your webpage (wherever you've defined a div)
Jquery is working!
Reload your page.

Ok so we have a problem.
We want to play tictactoe with a buddy but we've run out of paper.
Lets make a web application that lets us play a game =).

Let's go over the concept of the game.
The gameboard is compromised of a nine square grid.
Each player takes turns claiming a square.
The objective is to organize 3 claimed squares so they form a straight-line.

One player claims squares by denoting an X.
The other player claimes squares by denoting an O.

The game is over when either players forms a straight line with 3 claimed squares
or when there is no more squares left to claim.

Working it out:

We can make the game board in HTML and CSS.

## Problems

**Problem**

A player needs to be able claim a square.

**Solution**

When a square is clicked the app should claim that square for the current player.

**Implementation**

To do this we need some javascript code that listens and responds to 
the "click" event for each div element within the gameboard.

Jquery makes responding to events easy:

    $("#gameboard").find("div").click(function(){
      # some code here
    })

Here you are telling jquery to get the #gameboard element, find "div" (there are multiple)
and listen to the "click" event, then you are passing a "function" into the click function as a "callback"
All this means is that _after_  the click event is triggered, you want to respond with "callback"
in this case the callback is the function you directly passing in.

The function is a nice little wrapper for your custom code.

We are going to define "claiming" a square as the task of replacing the
content of the div element with either an X or an O depending on the player.

In jquery you can define the text of an element like this:

    $("div").text("some text");

Note here that jquery will match EVERY div element and define the text.

We need to _scope_ our code to only the element being clicked on.
In jquery:

    $("#gameboard").find("div").click(function(){
      $(this).text("some text");
    })

Note the usage of `this`. 
In JavaScript `this` always refers to the "owner" of the function we are executing.
In javascript functions always belong to objects, so the "owner" is always the parent object
of which the function is a direct method of. http://www.quirksmode.org/js/this.html

DOM events always belong to the specific element that triggered the event.
In this case even though we are listening for clicks on ALL our div elements,
only one click element can be triggered at a time. 
Therefore `this` always refers to that particular element!
You can see here that this is very handy for events. 
It will help you scope your responses
to the element that is responsible for the event.

    $("#gameboard").find("div").click(function(){
      $(this).text("X");
    })

Add this code to your app.js, reload the page and click on a square.
What happend?

Wait wait, we can't have just X's, what about the other player?

**Problem**

The app needs to be able to distinguish between 2 players.

**Solution**

The app should define 2 players. At the start of the game
Player 1 moves first. Next the app should know to switch to player2, 
then back to player 1 and so on.

**Implementation**

Lets setup javascript variables to store "the state" of who's turn it is in the game.
We don't need to store each player since they already are denoted by x and o.
Specifically we just need to know which players turn it is at any given time.

We can say:

    Player1 is always x.
    Player2 is always o
    Player1 always goes first.

    Let's express these assumptions in code:

    var player1 = "x";
    var player2 = "o";
    var whoseTurn = "x";

When the app starts `whoseTurn` is automatically set to "x" so we know that
"x" will always move first.

Now we need a way to update `whoseTurn` after a player makes his turn.
How can we do that?

We already have the code that fires whenever a turn is made (a user clicks a square)
All we have to do is add some code to that event.

    $("#gameboard").find("div").click(function(){
      $(this).text("x");
      whoseTurn = "o";
    })

This switches the turn but it does not do it very intelligently. 
We need smarter code that knows which mark to put based on which player's turn it is:
To do this we can use a logical operator:
The if statement;

    $("#gameboard").find("div").click(function(){
      if(whoseTurn === "x"){
        $(this).text("x");
        whoseTurn = "o";
      }
      else{
        $(this).text("o");
        whoseTurn = "x";
      }
    })

**In english**

If whoseTurn equals x set this div x and then set whoseTurn to o
else (meaning whoseTurn does NOT equal x) set the div to o and set whoseTurn to x

You can see this is an easy way to volley turns back and forth and make sure
the correct mark is used relative to the current player.


Now we have a working app! Sort of..., 
two players can play against one another and it works!
But it would be nice to automatically declare a winner.

**Problem**

The app needs to figure out if a player has won after each turn.

**Solution**

We can outline all possible ways a player can win. Then after each players 
turn we can search the gameboard for those winning patterns.
If a pattern is found we can declare a winner! (the current player)

**Implementation**

The gameboard is small enough to manually figure out all possible winning combinations just by looking at it.
We can define these combinations as "sets".
We can give each square a number based on its order within the gameboard element.
This is called its "index".
The index always starts with 0.
We can see that the squares are ordered from top-to-bottom and left-to-right.
Let's record the winning sets:

    left to right:  
      0,1,2
      3,4,5
      6,7,8
  
    top to bottom:
      0,3,6
      1,4,7
      2,5,8
  
    diagonal
      0,4,8
      6,4,2

We can represent these sets as arrays

    var set1 [0,1,2];
    var set2 [3,4,5];
    var set3 [6,7,8];
  
To be concise lets keep winning set arrays in another array!

    winningSets = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [6,4,2]
    ]

**In english**

An array of winning sets which are individually an array
containing div index positions needed to complete that set.

We can use this array of winning sets to check the gameboard
for all possible combinations after a player takes his turn.

Specifically we want to iterate through each set, checking to see
if ALL elements within a given set (identified by the index) are equal.

For example in the first set [0,1,2] we want to compare elements 0, 1, 2
to eachother to see if they all equal the same thing (all "o"'s or all "x"'s)
This necessarily demonstrates a winning set! and we can declare a winner.

Let's write this in code:
Here we use an array iterator `each` and pass a function for every iteration
(each element in main array)

    $.each(winningSets, function(){
      # do some stuff.
    })

We can use the function to to compare each set of indices.
How? 
Remember that `this` refers to object from which the function belongs.
In this case we are passing our function to "each" element in the array.
so `this` refers to the current array element (which is itself an array)


