import 'package:flutter/material.dart';

double widthAdaptive(double coaf, BuildContext context) {
  double widthAdapt = MediaQuery.of(context).size.width / 360 * coaf;
  return widthAdapt;
}

double heightAdaptive(double coaf, BuildContext context) {
  double heightAdapt = MediaQuery.of(context).size.height / 800 * coaf;
  return heightAdapt;
}
