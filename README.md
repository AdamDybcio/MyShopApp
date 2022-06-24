# MyShop App

This is my next Flutter app. It is an online store. This time, instead of adding screenshots, I will add a video of how the application works below. However, first I will describe its functionalities.

Well, the app is completely connected to Firebase. After turning on the application, the login screen is displayed. The user can switch between the registration and login screen (an animation is applied when switching over). After registering or logging in, the user is transferred to the home page of the store (he gets an authentication token for an hour, thanks to which his authentication status is saved after restarting the application). In the application itself, the user can:
- add items to favorites (hence it can display all or only favorite items)
- click on an item to see the details
- add the item (s) to the cart
- remove items from the cart
- see the cart
- place an order if the cart is not empty
- view his order history
- add a new item to the store
- edit his item
- remove his item from the store
- log out

https://user-images.githubusercontent.com/68535467/175612680-997b306b-c3cc-4413-beb0-85f0640ec507.mp4

Cons of the application:
- using Realtime Database instead of Firestore Databse
- user can add photo to item only via url

What have i learned:
- link the application with Firebase
- submit and handle requests to Firebase
- create a REST API
- manage Realtime Database and its rules
- use Providers
- create animations

and a lot of different less important things ...

My next application was a bit more difficult for me, but how satisfying it was to do it! I'll post it soon!
