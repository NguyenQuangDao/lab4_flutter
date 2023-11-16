import 'package:flutter/material.dart';
import 'package:lab04_interaction/counter_controller.dart';
import '../counter_model.dart';

class CounterLable extends StatelessWidget {
  const CounterLable({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: CounterController(),
        builder: (BuildContext context, Widget? child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'hiển thị số đếm',
                      ),
                      // giá trị hiển thị trên màn hình
                      Text(
                        CouterModal().counter.toString(),
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        'hiển thị số like',
                      ),
                      // giá trị hiển thị trên màn hình
                      Text(
                        CouterModal().checkLike ? 'Đã Like' : 'Hủy like',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  )
                ],
              ),

// tạo callback gọi hàm tăng giảm
            ],
          );
        });
  }
}
