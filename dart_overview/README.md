

Dart Notes:


Data Type:
-	Primary Data Type includes: number (int, double), String, bool
-	Dynamic data type with keyword: dynamic
-	Collection: List, Set, Maps, Queue
-	Function is data type with keyword Function
note: 
-	All data type are reference even null, all inherit from class Object
-	const: only can be define in function or at global. (Can not define as Class property)
-	Static variables aren’t initialized until they’re used.(Lazy ?) 

Ex:
  num n = 10;
  n = 10.10;
  int a = 10;
  // a = 10.1;  error because assign double to int variable
  var b = 10; // refer b is int
  // b = ""; b was refer as int, can not assign other value type for it
  dynamic c = 10;
  c = "";
  Function func = () { };
  List list = [];
  list[0] = 1;
  list[1] = "";
  Set set = Set();
  Map m = Map();
  m["a"] = 12;
  m[1] = 11;
  Queue q = Queue();

Operators:
-	Arithmetic Operators: +, -, *, /
-	Equality and Relational Operators: ==, <=, >=, >, <, !=
-	Type test Operators:  is, is!
-	Bitwise Operators: a & b,  a | b, ~a, a << b, a >> b
-	Assignment Operators: =, ??=, +=, -=, *=, /=
-	Logical Operators: &&, ||, !
-	Conditional Expressions: condition ? expr1 : expr2 ,  expr1 ?? expr2	

Loop/ condition
-	for
-	for in loop
-	while/do
-	if/else
-	switch: can apply for bool, number, string, enum

Function:
void function_name(param1, [optional_param_1, optional_param_2]) { } 
void function_name(a, {optional_param1, optional_param2}) { } 

ex: test_param(n1,[s1]) { 
   print(n1); 
   print(s1); 
}

Optional param name:
ex: test_param(n1,{s1,s2}) { 
   print(n1); 
   print(s1); 
} 

Param with default value :
function_name(param1,{param2= default_value}) { 
   //...... 
} 

Lambda Functions: [return_type]function_name(parameters)=>expression;
Ex: int funcLamda() => 10;


OOP
-	There is no interface, Class is also interface.	
-	Subclass by extends keyword
-	There is no multiple inheritance 
-	Implement by implements keyword
-	Can implement multiple class
-	There is no struct

Class:
-	Only have class and abstract class
-	Abstract class can not have instance
-	Property:
o	final variable: variable need assign value at define or in constructor
o	get/ set property:
-	Can not define recurrence class (define class inside class)
-	“this” keyword used to reference to current instance
-	overload constructor: must set enough data for final variable
-	The Cascade operator (..): can be used to issue a sequence of calls via an object
-	When subclass, must override the abstract function
-	When implement class must override all properties and functions. (except properties, functions from extension)
Scope:
	- default a public
	- protected: use annotation @protected (by using meta package package:flutter/foundation.dart). But IDE just show warning, no bug at runtime, property still can access as public property. There is some trick to create protected property: http://gmosx.com/posts/2015/02/18/protected-members-in-dart-classes.html

	- private: private on library not private for class, each file .dart is a anonymous library
			use underscore before the define ex: String _variableA;
	library vs package: package is bundle of library(or file .dart)

Mixin
https://github.com/dart-lang/language/blob/master/accepted/2.1/super-mixins/feature-specification.md#dart-2-mixin-declarations
https://medium.com/flutter-community/https-medium-com-shubhamhackzz-dart-for-flutter-mixins-in-dart-f8bb10a3d341

Mixins are normal classes from which we can borrow methods(or variables) from without extending the class. In dart we can do this by using the keyword with
	Define class with keyword mixin, this class can not subclass other class.
Define class with keyword mixin can prevent that class to be Subclass
	classes can only be used as mixins once they only extend object
	If there if conflict property, function (extend and mixin), the priority will increase from left to right. (This mean the one in list extends and mixin appear later is will used). 
Note. The property, function be define or override will be used if there is conflict
 Ex: in file mixin_sample.dart
class A {}
class B {}
class C {}
abstract class D {}
class M extends C with A, B implements D {}
or mixin M on A, B implements D {}

Extension:
Extension Is a way to add functionality to existing libraries

Define:
extension [<extension_name>] on class/abstract class {}

-	extension_name need when there is conflict or add the static function.
-	Avaiable from dart sdk 2.7
-	instance methods, operators, setters and getters, but not fields.
-	Can override function
-	When add static function, the function will just exist on that extension. So need the the extension_name to call.

Async:
Future represents the result of an asynchronous operation, and can have two states: uncompleted or completed.
The completed have result or error
Future look like Promise
https://dart.dev/codelabs/async-await
https://www.youtube.com/watch?v=OTS-ap9_aXc&list=PLjxrf2q8roU2HdJQDjJzOeO6J3FoFLWr2&index=15	

	Stream:
 https://dart.dev/tutorials/language/streams
https://www.youtube.com/watch?v=nQBpOIHE4eE&list=PLjxrf2q8roU2HdJQDjJzOeO6J3FoFLWr2&index=16

async/await:
https://www.youtube.com/watch?v=SmTCmDMi4BY&list=PLjxrf2q8roU2HdJQDjJzOeO6J3FoFLWr2&index=17

	async to define async function
	await to wait for function complete execute. Only use in async function
	use try/catch bound the await to handle the exception



Isolate:
https://www.youtube.com/watch?v=vl_AaCgudcY
 https://itnext.io/by-design-dart-is-a-single-threaded-programming-language-924c41e5c135


	

