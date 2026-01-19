

# Loops
* For Loops
The for loop is used to iterate through a specific range of numbers or a collection of items. It is a straightforward way to repeat an action for a known number of steps.

* While Loops
A while loop runs as long as its condition is true. It checks the condition before every iteration, making it useful when you don't know exactly how many times you need to loop.

* Until Loops
An until loop is the opposite of a while loop. It continues to run as long as the condition is false and stops the moment the condition evaluates to true.

* Loop Do and Break
The 'loop do' command creates an infinite loop. It is always used with a 'break' statement to exit the loop once a specific requirement has been met.

* Redo Keyword
The redo keyword is unique because it restarts the current iteration of a loop without checking the condition again. It is helpful for retrying a specific step that may have failed.

* Each and Times Iterators
The 'each' method is the most common way to process every item in an array. The 'times' method is a simple way to run a block of code a specific number of times based on an integer.

* Any and All Logic
These methods check the truthfulness of a collection. 'Any' returns true if at least one item matches a condition, while 'all' only returns true if every single item matches.

* Map and Collect
Map and collect are used for transformation. They take an array, perform an action on every element, and return a brand new array containing the updated values.

* Select and Reject
These are filtering methods. 'Select' creates a new array containing only the items that match a condition, while 'reject' does the opposite by removing items that match the condition.

* ActiveRecord Model Logic
In Rails, placing query logic in the Model keeps the application fast. Methods like 'where' and 'limit' filter data at the database level so you don't load unnecessary records into memory. 'Pluck' is used to grab only specific column values, which saves even more memory.

# Product Model and Query Theory

* ActiveRecord Model Methods
Defining methods in the model allows you to encapsulate data logic. When the controller calls a model method, the model executes the query and returns the results. This keeps the controller clean and allows the view to receive only the specific data it needs to display.

* Database Query Optimization
Using 'Product.all.limit(10)' fetches the first 10 records from the database. While you can use Ruby's '.select' block to filter active products in memory, it is generally more efficient to use '.where(is_active: true)' so the database handles the filtering before the data reaches your application.
# Product.all.limit.(10).select{|p| p.is_active==true}


* Pluck Method
The pluck method is used to select one or more specific columns from the database. It returns the values in a simple array instead of creating full ActiveRecord objects. This makes it much faster and more memory-efficient when you only need a specific piece of information, like a list of names or IDs.

