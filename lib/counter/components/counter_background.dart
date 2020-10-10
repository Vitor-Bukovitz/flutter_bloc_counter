import 'package:flutter/material.dart';

class CounterBackground extends StatelessWidget {
  CounterBackground({
    @required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.4,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff5E86EC),
                Color(0xff5ED0EC),
              ],
            ),
          ),
        ),
        SafeArea(
          child: child,
        ),
      ],
    );
  }
}
