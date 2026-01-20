
# day 6
---------------------------------------------------------------------------------------------
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


# day 7
---------------------------------------------------------------------------

# Ruby Inheritance: Core Concepts Summary

## 1. Class Inheritance (<)
Inheritance allows a class (Subclass) to acquire the properties and methods of another class (Superclass). 
- Syntax: `class Child < Parent`
- Purpose: Code reusability and creating hierarchical relationships.

## 2. Method Overriding
This occurs when a child class provides a specific implementation for a method that is already defined in its parent class.
- The child's method "hides" the parent's method for instances of the child.
- This allows for polymorphic behavior where different classes respond to the same method call in their own way.

## 3. The 'super' Keyword
The `super` keyword is used to call the method of the same name from the parent class.
- Use it when you want to EXTEND a parent's functionality rather than completely replacing it.
- In 'initialize', `super` passes arguments to the parent constructor to set up inherited variables.

## 4. Object Introspection (respond_to?)
The `.respond_to?(:method_name)` method checks if an object has a specific method available in its public interface.
- It returns a Boolean (true/false).
- It checks the object's own class, all inherited classes, and included modules.

## 5. Instance Variable Sharing
Instance variables (@variable) defined in a parent class are accessible to the child class methods, provided the parent's initialization or assignment logic has been executed.

## 6. Method Lookup Path
When you call a method, Ruby looks for it in this order:
1. The object's own class.
2. Any Modules included in the class.
3. The Parent class (Superclass).
4. The Parent's Parent, and so on, up to the 'Object' and 'BasicObject' classes.

