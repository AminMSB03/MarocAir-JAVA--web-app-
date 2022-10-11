# MarocAir-JAVA--web-app-

## Context of the project
As part of the automation of the reservation system, the company MarocAir wishes to create a web application that will allow the reservation of flights to its customers via a responsive site. We assume that the customer (code, name, first name, email, phone) accesses the booking GUI. The customer enters the departure/arrival city, the departure/arrival time, the departure/arrival date, and the number of seats. The system displays a list of proposed flights on the booking menu, including the description of the flights. If one of the flights requires a stopover, then the stopover airport is also displayed. The customer chooses the flight he/she is interested in, and requests the reservation of the flight. The system checks the availability of the flight. If the flight is available, a message is displayed to the customer "the confirmation of the reservation will be completed with the payment".



## FrontOffice:

The customer is then redirected to the payment page.

The customer receives an email confirming the booking with the details of the flight chosen.

The system then saves the details of the reservation in a file (txt)

A SafiAir Administrator manages the flights (Crud)

The customer can add extras to his flight (example: Insurance, Meals, Hotel...)

the pricing of the flights is in MAD

a 15% discount is applied for customers booking a round trip

the customer can modify or cancel his reservation after the confirmation of his flight

in case of cancellation: 8% of the costs are retained by MarocAir


## BackOffice:

A reservation manager (already registered in the system) is in charge of managing the flights (Crud)

The person in charge can consult the statistics of confirmed and cancelled reservations (monthly and annual)

NB: A flight must not exceed 30 passengers


## Work to do :

- Create a Java/JSP Web Application

- Model the graphical interfaces with a tool of your choice using also HTML, CSS and JavaScript, EJS

- Propose an adequate database under MySql/postgresql that effectively meets the specifications

-Create a project management file on Trello/Jira

- Realize the number of pages according to your choice in order to guarantee the online reservation procedure
