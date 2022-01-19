
// navigatorPushFromRightSide(Widget nextClass) {
//   return Navigator.push(
//       context,
//       PageRouteBuilder(
//           transitionDuration: const Duration(milliseconds: 100),
//           transitionsBuilder: (BuildContext context,
//               Animation<double> animation,
//               Animation<double> secAnimation,
//               Widget child) {
//             return SlideTransition(
//               position: animation.drive(tween),
//               child: child,
//             );
//           },
//           pageBuilder: (
//               BuildContext context,
//               Animation<double> animation,
//               Animation<double> secAnimation,
//               ) {
//             return nextClass;
//           }));
// }




// navigatorPopFromLeftSide(Widget nextClass) {
//   return Navigator.pop(
//       context,
//       PageRouteBuilder(
//           transitionDuration: const Duration(milliseconds: 50),
//           transitionsBuilder: (BuildContext context,
//               Animation<double> animation,
//               Animation<double> secAnimation,
//               Widget child) {
//             return SlideTransition(
//               position: animation.drive(tween),
//               child: child,
//             );
//           },
//           pageBuilder: (
//               BuildContext context,
//               Animation<double> animation,
//               Animation<double> secAnimation,
//               ) {
//             return nextClass;
//           }));
// }