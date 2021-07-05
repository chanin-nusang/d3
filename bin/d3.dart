import 'dart:ffi';
import 'package:d3/d3.dart' as d3;
import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:test/expect.dart';

const lineNumber = 'line-number';
void main(List<String> arguments) {
  String state = "Idle";
  int stateCount = 0;
  int hour = 0;
  int min = 0;
  List<String> cmd = [];
  new File("bin/input.txt")
      .openRead()
      .map(utf8.decode)
      .transform(new LineSplitter())
      .forEach((l) => cmd.add(l));

  for (int i = 0; i < cmd.length; i++) {
    if (cmd[i].contains('on')) {
      var st = cmd[i].split(" ");
      print("${st[1]}");
      hour = int.parse(st[1]);
      min = int.parse(st[2]);
    } else if (cmd[i] == "set") {
      stateCount = (stateCount + 1) % 3;
    } else if (cmd[i] == "inc" && stateCount == 1) {
      hour = (hour + 1) % 24;
    } else if (cmd[i] == "inc" && stateCount == 2) {
      min = (min + 1) % 60;
    }
  }
  print("Time : $hour.$min");

  void idle(String cmd) {
    var timeCmd = cmd.split(' ');
    String time = timeCmd[1];
    print(time);
  }
}
