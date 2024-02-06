import 'package:Inhouse_Pets/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WalkHistory extends StatefulWidget {
  const WalkHistory({super.key});

  @override
  State<WalkHistory> createState() => _WalkHistoryState();
}

class _WalkHistoryState extends State<WalkHistory> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          shadowColor: tPrimaryColor,
          width: MediaQuery.of(context).size.width / 1.3,
          child: ListView(
            //Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                //padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                decoration: BoxDecoration(
                  color: tPrimaryColor,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(""),
                        radius: MediaQuery.of(context).size.width / 16,
                        child: Icon(
                          Icons.person_rounded,
                          size: MediaQuery.of(context).size.width / 15,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Expanded(
                        child: Text(
                          "Guest",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 20,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text('WALK'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('My Walks'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white, // Change the color as needed
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          backgroundColor: Colors.blue,
          bottom: TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: 'All Walks',
              ),
              Tab(text: 'Updates'),
            ],
          ),
          actions: [
            Row(
              children: [
                Text(
                  "All time",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                  size: 27,
                ),
                SizedBox(
                  width: 2.w,
                ),
              ],
            )
          ],
        ),
        body: TabBarView(
          children: [
            // Chats Tab Content
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: double.infinity,
                  color: Colors.grey[600],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "WALKS",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.grey[600],
                              radius: MediaQuery.of(context).size.height / 14,
                              child: Image.asset(
                                "assets/images/user.png",
                                scale: 3,
                              )),
                          Text(
                            "0.00",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          Text(
                            "MI",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '00:18',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          Text(
                            "MINUTES",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, index) {
                        return Card(
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(boxShadow: []),
                            padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/map.png",
                                  scale: 10,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "0.00 mi in 0 min \nJan 19,2024",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),

            // Updates Tab Content
            Center(child: Text('Updates Tab Content')),
          ],
        ),
      ),
    );
  }
}
