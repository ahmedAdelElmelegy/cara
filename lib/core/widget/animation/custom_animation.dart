// import 'package:flutter/material.dart';

// class CustomTransitionPage extends Page {
//   final Widget child;
//   final Duration transitionDuration;
//   final Duration reverseTransitionDuration;

//   const CustomTransitionPage({
//     required this.child,
//     required LocalKey key,
//     this.transitionDuration = const Duration(milliseconds: 300),
//     this.reverseTransitionDuration = const Duration(milliseconds: 300),
//   }) : super(key: key);

//   @override
//   Route createRoute(BuildContext context) {
//     return PageRouteBuilder(
//       settings: this,
//       transitionDuration: transitionDuration,
//       reverseTransitionDuration: reverseTransitionDuration,
//       pageBuilder: (context, animation, secondaryAnimation) => child,
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         return FadeTransition(
//           opacity: CurvedAnimation(parent: animation, curve: Curves.easeInOut),
//           child: SlideTransition(
//             position:
//                 Tween<Offset>(
//                   begin: const Offset(0.25, 0),
//                   end: Offset.zero,
//                 ).animate(
//                   CurvedAnimation(parent: animation, curve: Curves.easeInOut),
//                 ),
//             child: child,
//           ),
//         );
//       },
//     );
//   }
// }

// class SlideRightTransitionPage extends Page {
//   final Widget child;

//   const SlideRightTransitionPage({required this.child, required LocalKey key})
//     : super(key: key);

//   @override
//   Route createRoute(BuildContext context) {
//     return PageRouteBuilder(
//       settings: this,
//       transitionDuration: const Duration(milliseconds: 300),
//       reverseTransitionDuration: const Duration(milliseconds: 250),
//       pageBuilder: (context, animation, secondaryAnimation) => child,
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         return SlideTransition(
//           position:
//               Tween<Offset>(
//                 begin: const Offset(1.0, 0.0),
//                 end: Offset.zero,
//               ).animate(
//                 CurvedAnimation(parent: animation, curve: Curves.easeInOut),
//               ),
//           child: child,
//         );
//       },
//     );
//   }
// }

// class ScaleTransitionPage extends Page {
//   final Widget child;

//   const ScaleTransitionPage({required this.child, required LocalKey key})
//     : super(key: key);

//   @override
//   Route createRoute(BuildContext context) {
//     return PageRouteBuilder(
//       settings: this,
//       transitionDuration: const Duration(milliseconds: 400),
//       reverseTransitionDuration: const Duration(milliseconds: 300),
//       pageBuilder: (context, animation, secondaryAnimation) => child,
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         return ScaleTransition(
//           scale: CurvedAnimation(parent: animation, curve: Curves.easeInOut),
//           child: child,
//         );
//       },
//     );
//   }
// }
