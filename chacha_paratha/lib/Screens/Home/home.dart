import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),

            //menu, address, shopping cart
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(color: Colors.grey.shade200, shape: BoxShape.circle),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 27,
                      ),
                      onPressed: () {
                        //   drawer:
                        //   Drawer(
                        //     // <-- The Drawer
                        //     child: ListView(
                        //       padding: EdgeInsets.zero,
                        //       children: [
                        //         DrawerHeader(
                        //           decoration: BoxDecoration(
                        //             color: Colors.blue,
                        //           ),
                        //           child: Text(
                        //             'Menu',
                        //             style: TextStyle(
                        //               color: Colors.white,
                        //               fontSize: 24,
                        //             ),
                        //           ),
                        //         ),
                        //         ListTile(
                        //           leading: Icon(Icons.home),
                        //           title: Text('Home'),
                        //           onTap: () {
                        //             // Handle Home tap
                        //             Navigator.pop(context);
                        //           },
                        //         ),
                        //         ListTile(
                        //           leading: Icon(Icons.settings),
                        //           title: Text('Settings'),
                        //           onTap: () {
                        //             // Handle Settings tap
                        //             Navigator.pop(context);
                        //           },
                        //         ),
                        //         ListTile(
                        //           leading: Icon(Icons.logout),
                        //           title: Text('Logout'),
                        //           onTap: () {
                        //             // Handle Logout tap
                        //             Navigator.pop(context);
                        //           },
                        //         ),
                        //       ],
                        //     ),
                        //   );
                      },
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UiHelper.customText(text: 'DELIVER TO', color: Colors.deepOrange, height: 16, fontweight: FontWeight.bold),
                    SizedBox(
                      height: 3,
                    ),
                    UiHelper.customText(text: 'Neelum Palace, Bariatu', color: Colors.grey.shade500, height: 18, fontweight: FontWeight.bold),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(color: Colors.grey.shade200, shape: BoxShape.circle),
                  child: IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                      onPressed: () {}),
                ),
              ],
            ),

            //UserName
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                UiHelper.customText(text: 'Hey Topper,', height: 20, color: Colors.black),
                UiHelper.customText(text: ' Good Afternoon!', height: 20, color: Colors.black, fontweight: FontWeight.bold),
              ],
            ),

            //Searchbar

            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search food or sweets',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: const Color.fromARGB(255, 199, 194, 194), width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Color(0xffff7622), width: 1.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
