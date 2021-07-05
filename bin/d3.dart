import 'package:d3/d3.dart' as d3;
import 'package:args/args.dart';

const lineNumber = 'line-number';
void main(List<String> arguments) {
  print('Hello world: ${d3.calculate()}!');
  String state = "Idle";

  final parser = ArgParser();
  ArgResults argResults = parser.parse(arguments);
  final paths = argResults.rest;
  print(argResults);
}

class Idle {}

class setHours {}

class setMins {}
