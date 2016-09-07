What are some common HTTP status codes?
The most common status code should be 200, which is the code to indicate that everything is OK and was executed without error.
The most common status code that a user might see is 404, which indicates that some error was made on the client side, and that the requested resource could not be found as requested.
The entire list of status codes can be found at:
https://en.wikipedia.org/wiki/List_of_HTTP_status_codes


What is the difference between a GET request and a POST request? When might each be used?
The most common two HTTP methods are GET and POST. 
The GET method requests data from a specified source. When the client uses GET, it sends a request to get all the information specified. The GET method is used whenever a user types in a website into the URL bar.
The POST method submits data to be processed to a specified resource. When the client uses POST, it submits data along with the POST request so that data can be added or updated. POST requests can be used when submitting forms on websites.


Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a small and sweet baked good.
Just kidding.
HTTP cookie / web cookie / Internet coookie / browser cookie
This is a small piece of data that is sent in each GET request, and stored in the user's web browser. The function of them is to be a way for websites to remember information about each user, such as items in the shopping cart for an online store, or recording a user's button clicks and previously viewed webpages. Authentication cookies are the method by which web servers can know if the user is currently logged in and has permissions to view certain sites or not; if they didn't have cookies to convey that authentication, users would have to repeatedly log into their accounts.