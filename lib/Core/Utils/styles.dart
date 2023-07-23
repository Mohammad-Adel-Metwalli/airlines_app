import 'package:airlines_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles
{
  static const animationStyle = TextStyle(fontSize: 17.5, color: Constants.carmine, fontWeight: FontWeight.bold);
  static const textStyleOfForm = TextStyle(fontSize: 15, color: Constants.carmine);
  static const textStyleOfFormButton = TextStyle(fontSize: 20, color: Constants.babyPowder);
  static const textStyleOfHomeAppBar = TextStyle(color: Constants.carmine, fontSize: 20, fontWeight: FontWeight.bold);
  static const textOfDining = TextStyle(fontWeight: FontWeight.bold, color: Constants.navyBlue, fontSize: 15, fontFamily: 'Poppins');
  static const textOfDiningImage = TextStyle(fontWeight: FontWeight.bold, color: Constants.babyPowder, fontSize: 20);
}
