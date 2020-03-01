Dart Language:


- Data type
- Condition 
- OOP
- Multiple thread
- Isolate
- Mixin
- Extension
- Lazy load
- High order function: filter, map, …
- 

Import/export
Static variables aren’t initialized until they’re used.

Data Type:
 	Primary Data Type includes: number (integer, double), string, bool, list, map
	Dynamic data type with keyword: dynamic
	Function is data type with keyword Function. Ex: Function funcA = () {};

*note: All data type are reference even null, all inherit from class Object

- Have inferred data type: var variableA = 10; // Int
- Dynamic data type using keyword “dynamic” ex: dynamic variableA;

Enum:
enum enum_name {  
   enumeration list 
}

Operators:
	+ Arithmetic Operators: +, -, *, /
	+ Equality and Relational Operators: ==, <=, >=, >, <, !=
	+ Type test Operators:  is, is!
	+ Bitwise Operators: a & b,  a | b, ~a, a << b, a >> b
	+ Assignment Operators: =, ??=, +=, -=, *=, /=
	+ Logical Operators: &&, ||, !
	+ Conditional Expressions: condition ? expr1 : expr2 , expr1 ?? expr2
								
Loop:
	for
	for in loop
	while/do
	if/else
	switch: can apply for bool, number, string, enum
Ex:
    int intValue = 0;
    bool a = true;
    List<int> listA = [];

    if(a == true) {
    } else if(a == false) {
    } else {
    }

    while(a == true){}
    do {
    } while(a == true);

    for(int index = 0; index < listA.length; index++) {}
    for(int index in listA) {}

    switch(intValue) {
      case 0:
      break;
      default: 
      break;
    }


Function:
Optional index:
void function_name(param1, [optional_param_1, optional_param_2]) { } 
ex: test_param(n1,[s1]) { 
   print(n1); 
   print(s1); 
}

Optional param name:
void function_name(a, {optional_param1, optional_param2}) { } 
ex: test_param(n1,{s1,s2}) { 
   print(n1); 
   print(s1); 
} 

Param with default value :
function_name(param1,{param2= default_value}) { 
   //...... 
} 

[return_type]function_name(parameters)=>expression;



Lambda Functions

Multiple Thread:
	sync/await
	Future
	Stream object


OOP:
	- There is no interface, Class is also interface.	
	- only have class and abstract class
	- subclass by extends keyword
	- There is no multiple subclass
	- implement by implements keyword
	- can implement multiple 
	- There is no struct

If there is conflict, the priority will be subclass after that is implementation
When implement class, all properties, functions need to be override (even the abstract class)

Class:
	- final variable: variable need assign value at define or in constructor
	- const: only can be define in function or at global. (Can not define as Class property)
	- get/ set property:
	- private variable: use underscore to define private
	- no support child class:
	- this keyword used to reference to current instance

Ex:

Class MyClass {
	final String finalVariable = “”;
	
}

Singleton:


Be apart of file:


Isolate:

Mixin:  permit multiple inherited
by with

Extension:
	Like category in objective-c, extension in swift, extension function in kotlin

	

