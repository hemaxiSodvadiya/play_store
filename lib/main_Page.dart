import 'package:flutter/material.dart';
import 'package:outcasterproject/screens/ForYouPage/for_You_Home_Page.dart';
import 'package:outcasterproject/screens/detail_Page.dart';
import 'package:outcasterproject/screens/top_Chats_Page/Top_Chats_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  late TabController tabController;
  PageController pageController = PageController();
  int initialTabBarIndex = 0;
  List tabs = [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        initialIndex: initialTabBarIndex,
        child: Scaffold(
          // backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: ListView.builder(
                padding: EdgeInsets.only(
                  bottom: 3,
                ),
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    height: 65,
                    child: Card(
                      elevation: 2,
                      child: ListTile(
                        onTap: () {
                          // Navigator.of(context).pushNamed('create_Id');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        tileColor: Colors.white,
                        //isThreeLine: true,
                        leading: const Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.black,
                        ),
                        title: const Text(
                          "Search for Apps & games",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Color(0xffaeb0b2),
                          ),
                        ),

                        trailing: const Icon(
                          (Icons.keyboard_voice_outlined),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                }),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "For you",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Top charts",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Editor's Choice",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              ForYouPage(),
              TopChatsPage(),
              DetailPage(),
              Container(
                color: Colors.green,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.games),
                label: "Games",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_movies_outlined),
                label: "Movies",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined),
                label: "Books",
              )
            ],
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
          ),
        ),
      ),
    );
  }
}
