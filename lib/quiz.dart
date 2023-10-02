// with if statement
import 'package:advanced_basics/questionsscreen.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/startscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // lifting the state up
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const Questionsscreen();
    }

    return (MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 63, 6, 161),
                Color.fromARGB(255, 148, 105, 224),
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          // ternary expression
          // does not rquire initialization
          child: screenWidget,
        ),
      ),
    ));
  }
}

// // with ternery expressions
// import 'package:advanced_basics/questionsscreen.dart';
// import 'package:flutter/material.dart';
// import 'package:advanced_basics/startscreen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});
//   @override
//   State<Quiz> createState() {
//     return _QuizState();
//   }
// }

// class _QuizState extends State<Quiz> {
//   var activeScreen = 'start-screen';

//   // Widget? activeScreen;
//   // @override
//   // void initState() {
//   //   activeScreen = StartScreen(switchScreen);
//   //   super.initState();
//   // }

//   // lifting the state up
//   void switchScreen() {
//     setState(() {
//       activeScreen = 'questions-screen';
//     });
//   }

//   @override
//   Widget build(context) {
//     return (MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 63, 6, 161),
//                 Color.fromARGB(255, 148, 105, 224),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.topRight,
//             ),
//           ),
//           // ternary expression
//           // does not rquire initialization
//           child: activeScreen == 'start-screen'
//               ? StartScreen(switchScreen)
//               : const Questionsscreen(),
//         ),
//       ),
//     ));
//   }
// }

// without ternery expressions
// import 'package:advanced_basics/questionsscreen.dart';
// import 'package:flutter/material.dart';
// import 'package:advanced_basics/startscreen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});
//   @override
//   State<Quiz> createState() {
//     return _QuizState();
//   }
// }

// class _QuizState extends State<Quiz> {
//   Widget? activeScreen;
//   @override
//   void initState() {
//     activeScreen = StartScreen(switchScreen);
//     super.initState();
//   }

//   // lifting the state up
//   void switchScreen() {
//     setState(() {
//       activeScreen = const Questionsscreen();
//     });
//   }

//   @override
//   Widget build(context) {
//     return (MaterialApp(
//       home: Scaffold(
//         body: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 63, 6, 161),
//                   Color.fromARGB(255, 148, 105, 224),
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.topRight,
//               ),
//             ),
//             child: activeScreen),
//       ),
//     ));
//   }
// }
