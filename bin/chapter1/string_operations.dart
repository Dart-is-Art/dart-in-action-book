/// DO use /// doc comments to document members and types.
/// Using a doc comment instead of a regular comment enables dartdoc to find it and generate documentation for it.
String multiline1 = '''
I am a multiline string
are u? 
really?
''';

///  it is a common good practice to use double quote only for strings
///  which contain single quotes.
String multiline2 = """
I am a multiline string
are u? 
really?
""";

class Temp {
  @override
  String toString() {
    return 'to string is called';
  }
}

Temp temp = Temp();

/// automatically the toString method of temp is called and replaced in the string
String interpolationWithToString = 'interpolated $temp';

String string = 'yes yes';
String simpleInterpolation = 'simple interpolation ${string}';

void main() {
  print(multiline1);
  print(multiline2);
  print(interpolationWithToString);
  print(simpleInterpolation);
}
