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
  new File("bin/input.txt")
      .openRead()
      .map(utf8.decode)
      .transform(new LineSplitter())
      .forEach((l) => { 
        if l.contains("on"){
          
        }
      });
  
  void idle(){

  }
}

class Idle {}

class setHours {}

class setMins {}
