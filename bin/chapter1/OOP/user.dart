class UserOut {
  int age;
  int _number;

  UserOut(this.age, this._number);

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