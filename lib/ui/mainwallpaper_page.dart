import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: ClipRRect(
                // borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/bg_cardimage5.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Positioned Widgets
            Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0x5D9E9E9E),
                            ),
                            child: Icon(Icons.info, color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Info',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0x5D9E9E9E),
                            ),
                            child: Icon(Icons.arrow_circle_down,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0x5D9E9E9E),
                            ),
                            child:
                                Icon(Icons.brush_rounded, color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Apply',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
