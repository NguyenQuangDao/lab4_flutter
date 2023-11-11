import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // check xem có like hay không
  bool checkLike = false;
  // số like
  int _countLike = 0;
  // hàm set like và tăng giảm số like
  void _checkLikeView() {
    setState(() {
      checkLike = !checkLike;
    });
    if (checkLike) {
      _countLike++;
    } else {
      _countLike--;
    }
  }

  // giá trị ban đầu
  int _counter = 0;
// hàm tăng +1 số đếm mỗi lần gọi
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

// hàm tăng -1 số đếm mỗi lần gọi
  void _reduceCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
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
                      '$_counter',
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
                      '$_countLike',
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
            MyButton(
              onPressedIncrementCounter: () {
                _incrementCounter();
              },
              onPressedReduceCouter: () {
                _reduceCounter();
              },
              checkLike: checkLike,
              onPressedCheckLike: () {
                _checkLikeView();
              },
            ),
          ],
        ),
      ),
    );
  }
}

// nút button
class MyButton extends StatelessWidget {
  final VoidCallback onPressedIncrementCounter;
  final VoidCallback onPressedReduceCouter;
  final VoidCallback onPressedCheckLike;
  final bool checkLike;
  const MyButton(
      {super.key,
      required this.onPressedIncrementCounter,
      required this.onPressedReduceCouter,
      required this.checkLike,
      required this.onPressedCheckLike});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onPressedCheckLike();
          },
          child: Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width * 0.9,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color.fromARGB(255, 120, 74, 195),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                checkLike
                    ? const Text(
                        'Click to Dislike',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    : const Text(
                        'Click to Like',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  checkLike ? Icons.thumb_up : Icons.thumb_up_off_alt,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                onPressedIncrementCounter();
              },
              child: Container(
                height: 50.0,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color.fromARGB(255, 120, 74, 195),
                ),
                child: const Center(
                  child: Text(
                    'Counter increases ( + )',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onPressedReduceCouter();
              },
              child: Container(
                height: 50.0,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color.fromARGB(255, 120, 74, 195),
                ),
                child: const Center(
                  child: Text(
                    'Counter decreases ( - )',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
