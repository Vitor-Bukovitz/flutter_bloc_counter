import 'package:flutter_counter/counter/components/counter_buttons.dart';
import 'package:flutter_counter/counter/counter.dart';
import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: CounterButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: CounterBackground(
        child: Container(
          height: size.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'People of Party',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              _generateCircles(size),
              CounterCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _generateCircles(size) {
    return Container(
      width: size.width * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          3,
          (index) => Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 0
                  ? Colors.white24
                  : index == 1 ? Colors.white54 : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
