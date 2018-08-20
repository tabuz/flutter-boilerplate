import 'package:flutter/material.dart';
import './ui/home.dart';

void main() {
var title = "Increase the number";

  runApp(new MaterialApp(
    title: title,
    home: new Home(
      title: title,
    ),
  ));
}