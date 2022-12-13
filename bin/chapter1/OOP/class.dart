import 'user.dart';

class User {
  int age;
  int _number;

  User(this.age, this._number);

  int get number => _number;
  /// this is the unique syntax for getters and setters in dart.
  /// the syntax to use private fields is as you would access and modify
  /// public fields, the difference is that dart calls your setter and getter
  /// under the hood.
  set number(int value) {
    print('setter is called');
    _number = value;
  }
}

void main() {
  /// it is said that to avoid unnecessary verbosity,
  /// it is a good practice to don't use type annotation for local
  /// variables.
  var user = User(30, 10);
  /// private fields can be accessed both with and without _ at their very
  /// beginning.
  print(user.number);
  /// classes on the scope of the running function (being on the same file)
  /// are public anyways. Meaning that their fields are public no matter
  /// how they are declared, public or private.
  user._number = 25;
  user.number = 25;
  print(user._number);

  /// here, the same class is defined outside this file.
  /// The behaviour is significantly different. Private and public
  /// fields act as you would expect.
  var userOut = UserOut(10, 20);
  print(userOut.number);
}