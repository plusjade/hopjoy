Javascript is used for 3 core responsibilities relative to a web browser application:

- Listen and respond to Events
- Update the application environment interface.  
This is known as the _document object model_ or DOM.
- Store and retrieve data

## Handling Events

When you use a web-based application via the web-browser there are many events that take place.
When your app first loads an "load" event fires.
When you click on an object an "click" event fires.
When you enter text in a form, or hover over an object.

There are many many events that happen throughout your app.
You can even define custom events to fire when a user does something.

Take a minute to think about your favorite web apps. 
Notice how the app responds to things you do. How does it know what you are doing?

The browser is constantly "firing" events based on the user interaction.

Log into your favorite web app. See if you can guess what events are firing and how they are firing.
Did you click on something? did you move your mouse? did you press a key?
Nearly every interaction you can think of has an "event" attached to its use.

### Listen and Respond to Events With Javascript.

You can create "event listeners" in Javascript that will execute code every time that event is fired.

## Manipulating the Application Environment.

Javascript allows your application to "be responsive".
Now that you know what events are you can use them to execute code that "responds" to the event.
But what exactly would a "response" be?

DOM Updates (manipulation)
Javascript can add, remove, and update any element in the DOM.
It can also re-stylize them with CSS, change position, height, width.
It can also hide elements.

Suppose your app listed your tasks for the day. 
If you finished a task you'd want to mark it as finished.
To mark a task as finished you might click on the task.
You'd then attach code to the click event that uses Javascript to change that task element's background color to gray.
You can also create a new element in the DOM with the text "Task Finished!"

Javascript provides many powerful ways to interact with and manipulate the DOM.
All of which can be programmed into your events.
To realize how powerful DOM manipulation can get, consider that video games are being developed for the web-browser.

### Templating with Javascript


## Storing and Retrieving Data.

The last thing we need Javascript to do is manage our data.
Users need to be able to enter data into our application.
At the the simplest level we can use HTML forms to provide a way for users to enter data.
The HTML FORM is an element like any other so Javascript can access its contents via the DOM.

When the form is submitted (this is an event), you can use Javascript to 
process the data, and store it for later. 

Storing and retrieving data is also important if you want your app to work for multiple users.
There has to be a way to store user-specific data so that each user has access to his data
and not necessarily everyone elses.

NOTE: 
There are different levels of data storage.
As you will see, the options for storing data are many depending on your specific needs.
Alas this is an introduction to motivate you (not drive you insane)

**Cache Storage**  
Javascript can store data in its "cache" by simply setting and getting variables as normal.
But the data will disappear as soon as the user reloads the page or closes his browser session.

**HTML5 Local Storage**  
Javascript can use HTML5 Storage to solve this problem.
We will use HTML5 storage to store our data _in the browser_. This means the user's
data will remained stored across all his browser sessions, even if he reloads or closes his browser.

**Server-side Database Storage**
Since his data resides on his browser on that specific computer
we eventually face the problem that the user cannot access his data on other computers nor other browsers.

To solve this problem we must use a remote Storage device (hosted on the internet).
Don't worry, Javascript can still connect to this device, but setting up remote storage
options is saved for when you earn your intermediate badge =)

