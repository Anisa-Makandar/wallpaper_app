// import 'package:flutter/material.dart';

// class WallpaperTone extends StatelessWidget {
//   final List<Map<String, dynamic>> cardData = [
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//     {'image': 'assets/images/bg_cardimage2.jpg'},
//     {'image': 'assets/images/bg_cardimage3.jpg'},
//     {'image': 'assets/images/bg_cardimage4.jpg'},
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//     {'image': 'assets/images/bg_cardimage5.jpg'},
//     {'image': 'assets/images/bg_cardimage2.jpg'},
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//     {'image': 'assets/images/bg_cardimage4.jpg'},
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//     {'image': 'assets/images/bg_cardimage2.jpg'},
//     {'image': 'assets/images/bg_cardimage3.jpg'},
//     {'image': 'assets/images/bg_cardimage4.jpg'},
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//     {'image': 'assets/images/bg_cardimage5.jpg'},
//     {'image': 'assets/images/bg_cardimage2.jpg'},
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//   ];

//   final List<Color> colorData = [
//     Color(0xffFDB7B9),
//     Color(0xff4164E0),
//     Color(0xff6141E0),
//     Color(0xff60BFC1),
//     Color(0xff292929),
//     Color(0xffFF9A0D),
//     Color(0xffB647EB),
//     Color(0xffFDB7B9),
//     Color(0xff4164E0),
//     Color(0xff6141E0),
//     Color(0xff60BFC1),
//     Color(0xff292929),
//     Color(0xffFF9A0D),
//     Color(0xffB647EB),
//   ];
//   final List<Map<String, dynamic>> paintingCard = [
//     {'image': 'assets/images/bg_paintingcard1.jpg'},
//     {'image': 'assets/images/bg_cardimage2.jpg'},
//     {'image': 'assets/images/bg_cardimage3.jpg'},
//     {'image': 'assets/images/bg_cardimage4.jpg'},
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//     {'image': 'assets/images/bg_cardimage5.jpg'},
//     {'image': 'assets/images/bg_cardimage2.jpg'},
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//     {'image': 'assets/images/bg_cardimage4.jpg'},
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//     {'image': 'assets/images/bg_cardimage2.jpg'},
//     {'image': 'assets/images/bg_cardimage3.jpg'},
//     {'image': 'assets/images/bg_cardimage4.jpg'},
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//     {'image': 'assets/images/bg_cardimage5.jpg'},
//     {'image': 'assets/images/bg_cardimage2.jpg'},
//     {'image': 'assets/images/bg_cardimage1.jpg'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               color: Color(0xFFDFE7EA),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         top: 40, left: 11, right: 11, bottom: 11),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         suffixIcon: Icon(Icons.search), // Search icon
//                         hintText: 'Find Wallpaper...', // Placeholder text
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                           borderSide: BorderSide.none,
//                         ),
//                         filled: true,
//                         fillColor: Color(
//                             0xFFEEF3F5), // Background color of the search bar
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10), // Space between the search bar and text
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 11.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Best of the month',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(11.0),
//                     child: SizedBox(
//                       height: 250,
//                       child: GridView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: cardData.length,
//                         itemBuilder: (context, index) {
//                           return Card(
//                             elevation: 1,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(21),
//                             ),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(21),
//                                 image: DecorationImage(
//                                   image: AssetImage(cardData[index]['image']),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 1,
//                           crossAxisSpacing: 11,
//                           childAspectRatio: 3 / 2,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10), // Space between the sections
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 11.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'The color tone',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(11.0),
//                     child: SizedBox(
//                       height: 50,
//                       child: GridView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: colorData.length,
//                         itemBuilder: (context, index) {
//                           return Card(
//                             elevation: 1,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             color: colorData[index],
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(12),
//                                 // You can add other decorations if needed
//                               ),
//                             ),
//                           );
//                         },
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 1,
//                           crossAxisSpacing: 11,
//                           childAspectRatio: 2 / 2,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10), // Space between the sections
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 11.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Categories',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(11.0),
//                     child: SizedBox(
//                       height: 200,
//                       width: double.infinity,
//                       child: GridView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: cardData.length,
//                         itemBuilder: (context, index) {
//                           return Card(
//                             elevation: 1,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(21),
//                             ),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(21),
//                                 image: DecorationImage(
//                                   image:
//                                       AssetImage(paintingCard[index]['image']),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                           crossAxisSpacing: 11,
//                           childAspectRatio: 0.3 / 0.5,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
