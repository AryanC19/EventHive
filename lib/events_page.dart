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
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Event Hive",
              style: TextStyle(
                fontSize: 35,
                fontFamily: "Lobster",
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
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.blue],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Events"),
                Tab(icon: Icon(Icons.school), text: "Academics"),
                Tab(icon: Icon(Icons.event), text: "Lectures"),
                Tab(icon: Icon(Icons.person), text: "Profile"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  buildCard("title", "urlImage"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    width: 100,
                    height: 180,
                    child: Card(
                      color: Colors.blue[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Title",
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "01/01/23",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Registration Link",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    width: 100,
                    height: 180,
                    child: Card(
                      color: Colors.blue[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Title",
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "01/01/23",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Registration Link",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    width: 100,
                    height: 180,
                    child: Card(
                      color: Colors.blue[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Title",
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "01/01/23",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Registration Link",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    width: 100,
                    height: 180,
                    child: Card(
                      color: Colors.blue[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Title",
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "01/01/23",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Registration Link",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    width: 100,
                    height: 180,
                    child: Card(
                      color: Colors.blue[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Title",
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "01/01/23",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Registration Link",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    width: 100,
                    height: 180,
                    child: Card(
                      color: Colors.blue[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Title",
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "01/01/23",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Registration Link",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ListView(
                children: [
                  Text("deez nuts"),
                ],
              ),
              ListView(
                children: [
                  Text("deez nuts"),
                ],
              ),
              ListView(
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.blue[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Profile",
                          style: TextStyle(fontSize: 35),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(user.photoURL!),
                        ),
                        Text(
                          user.displayName!,
                          style: TextStyle(fontSize: 35),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          user.email!,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );



  Widget buildCard(String title,String urlImage)=> Padding(
    padding: EdgeInsets.all(10),
    child: Card(
      child: ExpandablePanel(
        header:  Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight:FontWeight.bold

          ),

        ),
        collapsed: ,
        expanded: ,

      ),
    ),
  );
}
