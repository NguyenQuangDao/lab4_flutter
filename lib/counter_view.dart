import 'package:flutter/material.dart';
import 'package:lab04_interaction/widgets/counter_button.dart';
import 'package:lab04_interaction/widgets/counter_lable.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Wrap(
              children: [
                Text(
                  'Nguyễn Quang Đạo',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '2121050451',
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CounterLable(),
          MyButton(),
        ],
      ),
    );
  }
}
