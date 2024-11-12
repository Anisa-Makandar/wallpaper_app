import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColortonePage extends StatelessWidget {
  final List<Map<String, dynamic>> cardData = [
    {'image': 'assets/images/bg_cardimage1.jpg'},
    {'image': 'assets/images/bg_cardimage2.jpg'},
    {'image': 'assets/images/bg_cardimage3.jpg'},
    {'image': 'assets/images/bg_cardimage4.jpg'},
    {'image': 'assets/images/bg_cardimage1.jpg'},
    {'image': 'assets/images/bg_cardimage5.jpg'},
    {'image': 'assets/images/bg_cardimage2.jpg'},
    {'image': 'assets/images/bg_cardimage1.jpg'},
    {'image': 'assets/images/bg_cardimage4.jpg'},
    {'image': 'assets/images/bg_cardimage1.jpg'},
    {'image': 'assets/images/bg_cardimage2.jpg'},
    {'image': 'assets/images/bg_cardimage3.jpg'},
    {'image': 'assets/images/bg_cardimage4.jpg'},
    {'image': 'assets/images/bg_cardimage1.jpg'},
    {'image': 'assets/images/bg_cardimage5.jpg'},
    {'image': 'assets/images/bg_cardimage2.jpg'},
    {'image': 'assets/images/bg_cardimage1.jpg'},
    {'image': 'assets/images/bg_cardimage4.jpg'},
    {'image': 'assets/images/bg_cardimage1.jpg'},
    {'image': 'assets/images/bg_cardimage2.jpg'},
    {'image': 'assets/images/bg_cardimage3.jpg'},
    {'image': 'assets/images/bg_cardimage4.jpg'},
    {'image': 'assets/images/bg_cardimage1.jpg'},
    {'image': 'assets/images/bg_cardimage5.jpg'},
    {'image': 'assets/images/bg_cardimage2.jpg'},
    {'image': 'assets/images/bg_cardimage1.jpg'},
    {'image': 'assets/images/bg_cardimage4.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFDFE7EA),
            // borderRadius: BorderRadius.circular(19),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Text(
                      'Nature',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      '27 wallpapers available',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: GridView.builder(
                    itemCount: cardData.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage(cardData[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 11,
                      crossAxisSpacing: 11,
                      childAspectRatio: 2 / 3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
