Take Away
=========
Friday Challenge
---------
This is the second level of the test in week #4 for [Makers Academy](http://www.makersacademy.com)

##What it does
It has a list of all dishes available, it can place the order by the dish and its quantity, and calculates the total. If the total is correct, it sends a text message with the total amount of the order and the stimated time of delivery.

##How to use it

`require './lib/takeaway'`

`takeaway = TakeAway.new`

To place orders (e.g. four burgers, three cokes and one pizza):

`takeaway.place_order(:burger, 4)`

`takeaway.place_order(:coke, 3)`

`takeaway.place_order(:pizza, 1)`

##Not implemented yet
To send the order (and receive the message):

`takeaway.send_order`