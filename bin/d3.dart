import 'dart:ffi';
import 'package:d3/d3.dart' as d3;
import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:test/expect.dart';

const lineNumber = 'line-number';
void main(List<String> arguments) {
  print('Hello world: ${d3.calculate()}!');
  String state = "Idle";
  double time = 0.00;
  List<String> cmd = [];
  new File("bin/input.txt")
      .openRead()
      .map(utf8.decode)
      .transform(new LineSplitter())
      .forEach((l) => cmd.add(l));

  for (int i = 0; i < cmd.length; i++) {
    if (cmd[i].contains('on') 
    var st = cmd[i].
    ) ;
  }
  void idle(String cmd) {
    var timeCmd = cmd.split(' ');
    String time = timeCmd[1];
    print(time);
  }
}

class Idle {}

class setHours {}

class setMins {}
