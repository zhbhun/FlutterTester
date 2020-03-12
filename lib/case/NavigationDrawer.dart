import 'package:flutter/material.dart';
import '../ExampleLists.dart';

final example = ExampleItem(
    title: 'Navigation Drawer',
    widget: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(), // route for home is '/' implicitly
          routes: <String, WidgetBuilder>{
            // define the routes
            SettingsScreen.routeName: (BuildContext context) =>
                SettingsScreen(),
            AccountScreen.routeName: (BuildContext context) => AccountScreen(),
          },
        ));

class AccountScreen extends StatelessWidget {
  static const String routeName = "/account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: Container(
          child: Center(
        child: Text("Account Screen"),
      )),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(child: Text("Header"));
    var aboutChild = AboutListTile(
        child: Text("About"),
        applicationName: "Application Name",
        applicationVersion: "v1.0.0",
        applicationIcon: Icon(Icons.adb),
        icon: Icon(Icons.info));

    ListTile getNavItem(var icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(s),
        onTap: () {
          setState(() {
            // pop closes the drawer
            Navigator.of(context).pop();
            // navigate to the route
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, "Settings", SettingsScreen.routeName),
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Account", AccountScreen.routeName),
      aboutChild
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer Example"),
      ),
      body: Container(
          child: Center(
        child: Text("Home Screen"),
      )),
      // Set the nav drawer
      drawer: getNavDrawer(context),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  static const String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
          child: Center(
        child: Text("Settings Screen"),
      )),
    );
  }
}
