import 'package:expandable/expandable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_up_widget.dart';
import 'package:provider/provider.dart';
import 'google_sign_in.dart';

class HomePage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

  static String id = "HomePage";

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Scaffold(
            backgroundColor: const Color(0xFFEFEAE2),
            appBar: AppBar(
              title: const Text(
                "Event Hive",
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: "Poppins",
                  color: const Color(0xFFEFEAE2),
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
              ),
              actions: [],
              // backgroundColor: Colors.green,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  color: const Color(0xFF7D9D9C),
                ),
              ),
              bottom: const TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    child: Text(
                      "Events",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: const Color(0xFFEFEAE2),
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.school),
                    child: Text(
                      "Study",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: const Color(0xFFEFEAE2),
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.event),
                    child: Text(
                      "Lectures",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: const Color(0xFFEFEAE2),
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: const Color(0xFFEFEAE2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                ListView(
                  children: [
                    Row(
                      children: [],
                    ),
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                  ],
                ),
                ListView(
                  children: [
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                  ],
                ),
                ListView(
                  children: [
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                    buildCard(
                        "Vinhack", "Homi Baba Gallery", "9:30 am", "13/01/23"),
                  ],
                ),
                ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: const Color(0xFFEFEAE2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Profile",
                            style:
                                TextStyle(fontSize: 35, fontFamily: "Poppins"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(user.photoURL!),
                          ),
                          Text(
                            user.displayName!,
                            style:
                                TextStyle(fontSize: 35, fontFamily: "Poppins"),
                          ),
                          Text(
                            user.email!,
                            style:
                                TextStyle(fontSize: 15, fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildCard(String title, String venue, String time, String date) =>
      Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: const Color(0xFF7D9D9C),
          child: ExpandablePanel(
            header: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      color: const Color(0xFFEFEAE2),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            collapsed: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    venue,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      color: const Color(0xFFEFEAE2),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      color: const Color(0xFFEFEAE2),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      color: const Color(0xFFEFEAE2),
                    ),
                  ),
                  Text(
                    "  ",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      color: const Color(0xFFEFEAE2),
                    ),
                  ),
                ],
              ),
            ),
            expanded: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 5),
                      borderRadius: BorderRadius.circular(20), //<-- SEE HERE
                    ),
                    child: Image.asset('images/poster.png'),
                  ),
                  Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      color: const Color(0xFFEFEAE2),
                    ),
                    "Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text ",
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
