import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanda/resources/resources.dart';

class BussinessHomeScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const BussinessHomeScreen(),
      );
  const BussinessHomeScreen({super.key});

  @override
  State<BussinessHomeScreen> createState() => _BussinessHomeScreenState();
}

class _BussinessHomeScreenState extends State<BussinessHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SvgPicture.asset(
          SvgImages.log,
          height: 30,
          width: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 300, // Equal width for the container and image
                height: 250,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Background Container (Yellow)
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber[700],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.only(
                            top: 100,
                            left: 16,
                            right: 16,
                            bottom: 16), // Space for content
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // Title
                            Text(
                              "Ala-Too University",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4),
                            // Address
                            Text(
                              "Адрес: 1/8 ул. Анкара, Бишкек",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 8),
                            // Price Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Цена:",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "699 сом",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Fully Rounded Image
                    Positioned(
                      top: 0, // Aligns the image at the top of the stack
                      left: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(30), // Fully rounded corners
                        child: Image.network(
                          "data:image/jpeg;base64,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", // Replace with your image URL
                          width: 300,
                          height: 100, // Height set to 100
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),

      // bottomNavigationBar: AppBottomNavigationBar(child: Text('')),
    );
  }
}
