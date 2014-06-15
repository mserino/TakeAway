Take Away
=========
Friday Challenge
---------
This is the second level of the test in week #4 for [Makers Academy](http://www.makersacademy.com)

##What it does
It has a list of all dishes available, it can place the order by the dish and its quantity, and calculates the total. If the total is correct, it sends a text message with the total amount of the order and the stimated time of delivery.

##How to use it

Require the files:

`require './lib/dish'`

`require './lib/order'`

`require './lib/menu'`

Cook the dishes:

`burger = Dish.new('Burger', 5.0)`

`chicken = Dish.new('Chicken', 3.0)`

Add the dishes to the menu:

`menu = Menu.new`

`menu.add burger`

`menu.add chicken`

Order the dishes:

`order = Order.new`

`order.place_order burger, 3`

`order.place_order chicken, 2`

Go for checkout and input the total:

`order.checkout 21.0`