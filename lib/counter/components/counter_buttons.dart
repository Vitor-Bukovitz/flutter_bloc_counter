import 'package:flutter/material.dart';
import 'package:flutter_counter/counter/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                onPressed: () => context.read<CounterCubit>().reset(),
                child: Text(
                  'Reset',
                ),
              ),
              FlatButton(
                onPressed: () => context.read<CounterCubit>().decrement(),
                child: Text(
                  'Remove People',
                ),
              ),
            ],
          ),
          Container(
            width: size.width * 0.8,
            child: RaisedButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              padding: EdgeInsets.all(18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Color(0xff5D87ED),
              child: Text(
                'Add People',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
