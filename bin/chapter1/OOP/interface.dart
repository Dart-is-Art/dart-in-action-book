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

void main() {
  Shape square = Square();
  Shape shape = Shape();
  shape.sayHello();
  square.sayHello();
}