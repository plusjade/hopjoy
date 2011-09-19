### What is a Web Browser?

"A web browser is a software application for retrieving, presenting, and traversing information resources on the World Wide Web" - wikipedia.

Web browsers have a set of languages they can understand. 
To make a web-app that runs in a web-browser, you should use languages the browser can understand.
Browsers understand three main languages:

- HTML
- CSS
- Javascript

### HTML

HTML is a _markup language_. It allows the author to markup text so that it can be formatted and parsed by other applications (the browser in this case.)
Consider the following example:

    <h1>Title</h1>
    <p>
      A paragraph
    </p>

This piece of text has been "marked up" with HTML tags. It allows other software applications to know
which text represents the title, which represents a paragraph.
The browser will use this to render your webpage.

### CSS

CSS is a _styling language_. It allows the author to define how HTML elements should be displayed
This can be height, width, color, font, position, borders, size, and so on.

### Javascript

Javascript is a _scripting (programming) language_. 
Javascript is used in the web-browser to directly interact with and control
the environment user-interface (what the user sees and interacts with). You can move things around, create, update, and delete elements,
and get and set data from a database.

### How a Web Browser Works

Your web browser allows you to send and receive data to other computers on the internet.
When you type in "google.com" the browser is sending a request to the google.com server.
Based on your exact request (the url you send in) the server will return a response.
The response is none other than a mix of _HTML, CSS, and Javascript_. 
Servers also send images, audio, plain text, videos, pdfs, etc which will be covered later.

As the browser parses the data it begins to render the page.

- HTML received builds out a model of the document (Document Object Model)
- CSS received stylizes the rendered document (add color, fonts, put this here, align this there)
- Javascript received is executed.

### The Document Object Model

The web-browser builds a common "playground" for HTML, CSS, and Javascript to interact with eachother in.
This playground is called the document object model (DOM). Here's an example:
  
  
    <html>
      
      <head>
        <title>Title</title>
      </head>
      
      <body>
        <h1>My Page</h1>
        <div id="main">
          <h2>Section 1</h2>
          <p>
      
          </p>
    
          <h2>Section 2</h2>
          <p>
    
          </p>  
    
          <h2>Section 3</h2>
          <p>
      
          </p>
        </div>
        <div id="footer">
    
        </div>
      </body>
      
    </html>

The DOM is created from the received HTML. You can see how HTML is naturally nested.
The DOM can be thought of as a tree. It provides access pathways to the various HTML elements (objects).
You can then traverse up and down the DOM tree to identify any object in the DOM.
Objects can also be identified by their attributes (note the id="" and class="" attributes)

In this way CSS can use the DOM to find and stylize the correct elements on the page.
Javascript can use the DOM to find elements on the page to do cool stuff with.

**Recap**  

- HTML maps out your application environment via the DOM.
- CSS stylizes your application environment.
- Javascript powers your application.

