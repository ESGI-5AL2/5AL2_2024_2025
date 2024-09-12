import 'package:al2_2024/layouts/red_circle.dart';
import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  const Layouts({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final largeScreen = screenWidth > 600;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final maxHeight = constraints.maxHeight;
              return Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.pink,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: largeScreen ? Colors.orange : Colors.red,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.green,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                child: Wrap(
                                  spacing: 10,
                                  runSpacing: 10,
                                  children: List.generate(25, (index) {
                                    return RedCircle(value: index);
                                  }),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                color: Colors.blue,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      RedCircle(value: 0),
                                      SizedBox(width: 5),
                                      RedCircle(value: 1),
                                      Spacer(),
                                      RedCircle(value: 2),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(color: Colors.yellow),
                            ),
                          ],
                        ),
                        Positioned.fill(
                          child: Container(
                            color: Colors.black.withOpacity(.5),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(seconds: 1),
                          left: 50,
                          top: 150,
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
