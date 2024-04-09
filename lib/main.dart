import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lab_dashbord/components/examen.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List posts = ["a", "b", "c", "d", "e", "f", "g", "h", "i"];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Medecin',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          // leading: Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Text(
          //     'Medecin',
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          actions: [
            Icon(Icons.settings, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.notifications, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.food_bank_outlined, color: Colors.white),
          ],
        ),
        bottomNavigationBar: Container(
          // color: Colors.black,
          child: GNav(
            tabBackgroundColor: Color.fromARGB(255, 79, 127, 200),
            hoverColor: Colors.grey,
            gap: 8,
            onTabChange: (value) {},
            backgroundColor: Colors.blue,
            color: Color.fromARGB(255, 211, 222, 224),
            activeColor: Colors.white,
            // tabBackgroundGradient: LinearGradient(
            //   begin: Alignment.centerRight,
            //   end: Alignment.centerLeft,
            //   colors: [
            //     Color.fromARGB(255, 230, 224, 224),
            //     Color.fromARGB(255, 40, 6, 82)
            //   ],
            // ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Like',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.topRight,
          //     colors: [
          //       // Colors.black,
          //       // Color.fromARGB(255, 52, 17, 94),
          //       Color.fromARGB(255, 91, 11, 109),
          //       Color.fromARGB(221, 118, 18, 18),
          //       Color.fromARGB(255, 34, 11, 115),
          //     ],
          //   ),
          // ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 320, // Set a finite width here
                        child: TextField(
                          controller: controller,
                          textInputAction: TextInputAction.done,
                          cursorColor: Colors.cyan.shade900,
                          keyboardType: TextInputType.text,
                          keyboardAppearance: Brightness.light,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 20.0,
                              color: Colors.blueAccent,
                            ),
                            suffixIcon: Icon(
                              Icons.filter_list,
                              size: 20.0,
                              color: Colors.black54,
                            ),
                            contentPadding: EdgeInsets.all(8.0),
                            alignLabelWithHint: true,
                            hintText: 'Filtrez votre recherche',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 236, 213, 7),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.cyanAccent,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: EdgeInsets.all(20),
                child: SizedBox(
                  height: 450, // Hauteur maximale de la liste
                  child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return Examen(
                        code: "code",
                        date: "date",
                        marqueur: "marqueur",
                        type_examen: "type_examen",
                      );
                    },
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
