import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySideBar(),
    );
  }
}

class MySideBar extends StatefulWidget {
  const MySideBar({Key? key}) : super(key: key);

  @override
  _MySideBarState createState() => _MySideBarState();
}

class _MySideBarState extends State<MySideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           UserAccountsDrawerHeader(
                accountName: Text('Binit Shrestha'),
                accountEmail: Text('Binitshrest@gmail.com'),
              currentAccountPicture: CircleAvatar(
                // radius:80,
                child: ClipOval(
                  child: Image.network(
                    'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                  ),
                  )
                ),
             decoration: BoxDecoration(
               color: Colors.deepOrangeAccent,
               image: DecorationImage(
                 image:NetworkImage(
                     'https://images.unsplash.com/photo-1519002370431-787a1b5d32c4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
                     ),
                 fit: BoxFit.cover,

               ),
             ),
              ),
          ListTile(
              leading: Icon(Icons.account_circle_sharp),
              title: Text('My Account'),
              onTap: () => null,
            ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart_sharp),
            title: Text('My Cart'),
            onTap: () => null,
          ),
          ListTile(
              leading: Icon(Icons.wallet_giftcard_outlined),
              title: Text('Your Orders'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.track_changes),
              title: Text('Track your Order'),
              onTap: () => null,
            ),
            ListTile(
            leading: Icon(Icons.favorite_outlined),
            title: Text('Wishlist'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.help_outline_sharp),
            title: Text('Help & Support'),
            onTap: () => null,
          ),
            ],
      ),
    );
  }
}

