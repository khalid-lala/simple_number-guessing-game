import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random randomNum = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Simple Number Guessing App ! ")),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.5),
          child:
              x == 4
                  ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: 230,
                          width: 230,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.done_all,
                                size: 50,
                                color: Colors.green,
                              ),
                              SizedBox(height: 16),
                              Text(
                                "You Find the Number ! \n Number is $x",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                  : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Number is 4 ",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(height: 18),
                      Container(
                        height: 230,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.error, size: 50, color: Colors.red),
                            SizedBox(height: 16),
                            Text(
                              "Better Luck For Next time ! \n Your number is $x",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          shape: CircleBorder(),
          onPressed: () {
            x = randomNum.nextInt(10);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
