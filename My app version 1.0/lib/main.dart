import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_bar_example1/SideBar.dart';
import 'FirstTabPage.dart';



void main() => runApp(MaterialApp(
  home:SimpleAppBar(),
));

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({Key? key}) : super(key: key);
  static final String title = "AppBar";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleAppBarPageState(),
    );
  }
}


class SimpleAppBarPageState extends StatefulWidget {
  const SimpleAppBarPageState({Key? key}) : super(key: key);

  @override
  _SimpleAppBarPageStateState createState() => _SimpleAppBarPageStateState();
}

class _SimpleAppBarPageStateState extends State<SimpleAppBarPageState> {
  // Widget buildPage(String text) => Center(
  //     child: Text(
  //       text,
  //       style: TextStyle(fontSize: 20),
  //     )
  // );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: SideBar(),
        appBar: AppBar(
          title: Text('Binit S.Projects'),
          // centerTitle: true,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: (){
          //     drawer
          //   },
          // ),
            actions: [
              IconButton(
                  icon: Icon(Icons.shopping_cart_outlined),
                  onPressed:(){},
              ),
              IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed:(){},
              )
            ],
            // backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red,Colors.orange],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                )
              ),
            ),
            bottom: TabBar(
              // isScrollable: true,
              indicatorColor: Colors.white,
              // indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home',),
                Tab(icon: Icon(Icons.star), text: 'Categories',),
                Tab(icon: Icon(Icons.trending_up), text: 'Trending',),
                Tab(icon: Icon(Icons.supervisor_account_sharp), text: 'Brands',),
              ]

            ),
            elevation: 20,
            titleSpacing: 0,
        ),
          body: TabBarView(
                children: [
                FirstTabPage(),
                  FirstTabPage(),
                  FirstTabPage(),
                  FirstTabPage(),
                // buildPage('Home Page'),
                // buildPage('Categories Page'),
                // buildPage('New trends'),
                // buildPage('Brands'),
            ]
      ),
    )
    );
  }

  }

