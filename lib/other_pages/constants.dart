import 'package:flutter/material.dart';


const kTextFieldDecoration = InputDecoration(
  hintText: "Please enter your email",
  contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

const kBackgroundColor = Color(0xFFF5F5F3);
const kWidgetsColor = Colors.blueAccent;
const kSemestersStyle = TextStyle(
  color: Colors.white,
    fontSize: 21, fontWeight: FontWeight.bold
);

