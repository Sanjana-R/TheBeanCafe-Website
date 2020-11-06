# TheBeanCafe-Website
A website for a cafe for CSC4002 - Web Development Project 

## 1 Introduction
### 1.1 Aim
The aim of this project is to develop a functional website, containing both the frontend and
backend for The Bean Cafe. The system will function as a restaurant management system
that handles bookings, user accounts, online orders, and a menu.

### 1.2 Abstract
The design of a satisfactory restaurant management website is crucial for the success of any
business. Maintaining a website allows the business to connect with users online, without
requiring their physical presence to make arrangements. The restaurant management must be
able to make all necessary arrangements based on the necessities that a customer accessing
the website specifies. This problem may be resolved by using HTML to build the basic
structure of the necessary web pages, CSS to style the web pages neatly and aesthetically,
and JavaScript to create interactive and dynamic functionalities within a webpage structure.
These are the front end tools that will be used. The backend may be created by means of
MySQL in order to create and update a database containing all information about customer
details, orders, reviews, etc. Servlets and JSP may be used to connect the database to the
front end, as well as perform actions related to requests and responses. The Bean Café is the
fictional business that is being used for implementation purposes.

## 2 Design
### 3.1 Proposed System Design
Typing in the webpage url or searching for it on a search engine will lead the customer to the
Homepage. In the Homepage, the user receives concise descriptions about the café and may
navigate among the other pages using the top navigation bar. The options in the top
navigation bar include redirection to either a menu, bookings, custom order, or online order
page.

### 3.2 Number of Modules/Websites
We have created five separate web pages, each having their own HTML, CSS, and/or
JavaScript code.
A database on MySQL is linked to the website.
JSP code pertaining to a Login and Sign Up Page that links all user information to a database.

### 3.3 Detailed Design of Modules
**Homepage**

Customers are introduced to the website. They are given various link options to choose from,
depending on what their need is. Such options include these websites: bookings, contact us,
about us, reviews, delivery, and a specialised custom order page

- _Functionalities of Homepage_
1. The homepage will have the main details of the restaurant, available at a glance. This will
include attractive offers, photographs of the food, and testimonials from past customers.
2. The bottom of the homepage will have the contact details of the restaurant and its
address
3. The homepage will further link the accompanying webpages, as discussed in the next
slide.

**Reservations/Bookings**

Customers can book the café for a variety of uses, ranging from study purposes and business
meetings to birthday parties.

- _Features of Bookings Page_
1. The reservations page allows any user to book a table or set of tables according to their
necessity for a specified time.
2. They may make reservations at any time prior, and may specify the event for which they
are booking, so that staff may provide an appropriate atmosphere.

**Menu**

View all items available, use it to make an online order

- _Features of Menu_
1. The menu will display all available items in a grid format with three columns.
2. For beverages, the price of all items for either small or large size is displayed.
3. All edible items will have a small area for expanded details about the item.

**Delivery Order**

Order from wherever the customer is, the café will deliver to the best of its abilities.

- _Features of Order Page_
1. Checkout is a popup from the interactive menu page. Users may choose any of the items
after reading a description of it alongside other choices.
2. Menu appears to be static when the order option is not invoked.
3. Cart only displays when an “Order Online” button is invoked, from the right side of a
page
4. Customer can add or delete a specified item using the “+” or “-” button that appears
beside each item in the menu
5. Popup contains all of the items in the cart, the total amount, and a form for the user to
enter valid personal, address, and card information. Form validation is implemented.

**Custom Order Page**

Some special orders can be made based on the season, bulk orders, or customised items.

- _Features of Custom Order Page_
1. There is no database connectivity to a custom order, as they are accepted on a case by
case basis.
2. The order message will be viewed by a member of staff, who will determine if the order
is possible to satisfy.
3. They will contact the requesting customer as needed.

**Log In and Sign Up Pages**

A user can create an account if the account does not already exist.
If an account does exist with the information provided, in the database, the user is not
allowed to create a new account. They must go to the login page.
After logging in, they are redirected to their dashboard.

## 3 Conclusion
The Bean Cafe website has a homepage, a booking and catering page, a special orders page,
a menu page, an orders page as well as a page for ‘My Account’, which has two options: log
in and signup.
The login and signup pages were successfully implemented using JSPand MySQL. A user is
able to sign up, and then log in using the same credentials and the details are added to the
database.
For future work, we aim to create a functional backend for the Orders Cart, Special Orders
and Catering page. By merging the data collected on orders with the menu items’ database
and customers’ database, the customer will be able to view their past orders upon logging in, in their dashboard. In addition, we aim to add a recommender system that recommends
relevant items to customers based on their past orders.
