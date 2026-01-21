
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

