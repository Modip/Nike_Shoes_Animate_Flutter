import 'package:flutter/material.dart';

bool isAnimate = true;

enum ButtonState { init, submitting, completed }

class ButtonStates extends StatefulWidget {
  const ButtonStates({super.key});

  @override
  State<ButtonStates> createState() => _ButtonStatesState();
}

class _ButtonStatesState extends State<ButtonStates> {
  ButtonState state = ButtonState.init;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    final isInit = isAnimate || state == ButtonState.init;
    final isDone = state == ButtonState.completed;
    return Container(
      alignment: Alignment.center,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        onEnd: () => setState(
          () {
            isAnimate = !isAnimate;
          },
        ),
        width: state == ButtonState.init ? w : 70,
        height: 53,
        child: isInit ? buildButton() : buildCircularContainer(isDone),
      ),
    );
  }

  Widget buildButton() => ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            fixedSize: const Size.fromHeight(53)),
        onPressed: () async {
          setState(() {
            state = ButtonState.submitting;
          });
          await Future.delayed(const Duration(seconds: 2));

          setState(() {
            state = ButtonState.completed;
          });

          await Future.delayed(const Duration(seconds: 2));

          setState(
            () {
              state = ButtonState.init;
            },
          );
        },
        child: const Text(
          "Add to Chart",
          style: TextStyle(color: Colors.white),
        ),
      );

  Widget buildCircularContainer(bool done) {
    final color = done ? Colors.green : Colors.white;

    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: done
          ? const Icon(
              Icons.done,
              size: 25,
              color: Colors.white,
            )
          : const CircularProgressIndicator(
              color: Colors.white,
            ),
    );
  }
}
