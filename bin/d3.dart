import 'package:d3/d3.dart' as d3;
import 'package:args/args.dart';

void main(List<String> arguments) {
  print('Hello world: ${d3.calculate()}!');
  String state = "Idle";
  print(arguments.length);
}

class Idle {}

class setHours {}

class setMins {}
