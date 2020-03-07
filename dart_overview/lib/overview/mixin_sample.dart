class A {
  String conflictProperty = "conflictPropertyA";
  methodA1() {
    print("methodA1");
  }

  conflictMethod() {
    print("conflictMethod A");
  }

  conflictMethodMixin() {
    print("conflictMethodMixin A");
  }
}

class B {
  String conflictProperty = "conflictPropertyB";
  methodB1() {
    print("methodB1");
  }

  conflictMethod() {
    print("conflictMethod B");
  }

  conflictMethodMixin() {
    print("conflictMethodMixin B");
  }
}

class C extends A {}

mixin D on A, B {}

// class E extends D {} // This line is error because E subclass from D which is mixin

abstract class AbstractA {
  funcAbstactA1() {
    print("funcAbstactA1");
  }

  noImplementFunction();
}

class _BaseClass {
  String conflictProperty = "conflictPropertyBaseClass";
  conflictMethod() {
    print("conflictMethod BaseClass");
  }
}

// class MixinF on C {} // This line is error, because C extends to A, not direct subclass from Object class
class MixinX extends _BaseClass with A, B, AbstractA {
  run() {
    methodX1();

    assert(this is A); // true
    assert(this is B); // true
  }

  methodX1() {
    print("conflictProperty: " + conflictProperty);
    methodA1();
    methodB1();
    conflictMethodMixin(); // conflictMethodMixin B  because B is after A in list mixin (with)
    noImplementFunction();
  }

  @override
  noImplementFunction() {
    print("noImplementFunction from AbstractA");
  }
}

mixin MixinY on A, B, AbstractA implements _BaseClass {}
// class ExtendMixinY extends MixinY {} // This line is error because class define by mixin keyword can not be subclass

class ExtendMixin extends MixinX {
  funcExtendMixin() {
    methodA1();
    methodB1();
    conflictMethod();
    conflictMethodMixin(); // conflictMethodMixin B  because B is after A in list mixin (with)
    noImplementFunction();
  }
}

class MixinExample {
  run() {
    print("=========================");
    print("Mixin Example");
    MixinX mixinX = MixinX();
    mixinX.run();

    print("ExtendMixin");
    ExtendMixin extendMixin = ExtendMixin();
    extendMixin.funcExtendMixin();
    print("=========================");
  }
}
