import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/counter/counter.dart';

class CounterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 3.0,
      child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Container(
            width: size.width * 0.75,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              '${state.counter.value}',
              style: TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          );
        },
      ),
    );
  }
}
