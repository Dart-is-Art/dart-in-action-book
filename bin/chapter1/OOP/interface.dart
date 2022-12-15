/// unlike Java, there is no such thing as
/// interface keyword in dart but the concept is still there
/// although, interfaces themselves can be used as fully functional
/// classes.
class Shape {
  void sayHello() {
    print('hello');
  }
}

class Square implements Shape{
  @override
  void sayHello() {
    // TODO: implement sayHello
    print('this is my own implementation of it.');
  }
}

/// there is a difference between factory constructors and generative constructors 
/// in dart. interfaces usually do not have generative constructors because instance of
/// interfaces is not going to be made so they can't be extended since having a
/// at least one generative constructor is a prerequisite to be extendable. 
abstract class IGreetable {
  /// if you want to don't provide implementation of methods 
  /// in a class, you have to make that class abstract.
  String sayHello(String name);
  factory IGreetable() {
    /// the class that a factory return has to have implemented the parent class. 
    /// in this case, Greeter has to have implemented IGreetable.
    return Greeter();
  }
  /// interfaces which have factory constructors cannot have generative constructors
}
/// factory constructors are mostly useful in single implementation cases.
class Greeter implements IGreetable{
  @override
  String sayHello(String name) {
    return 'hello $name';
  }
  /// constructors do not need to be overridden since the interface has 
  /// a factory constructor.
  
}
/// abstract classes are conceptually equivalent to
/// interfaces in java. However, normal classes have a hybrid identity,
/// meaning, they can behave as a combination of classes and interfaces in java.
void main() {
  Shape square = Square();
  Shape shape = Shape();
  shape.sayHello();
  square.sayHello();
  
  IGreetable iGreetable = IGreetable();
  print(iGreetable.sayHello('ali'));
}