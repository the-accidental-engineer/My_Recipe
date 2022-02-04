import 'package:flutter/material.dart';
import '/screens/filters_page.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //builListTile is funtion for building listTile
    Widget buildListTile(
        {required String title,
        required IconData icon,
        required String tapHandler}) {
      return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        onTap: () {
          Navigator.of(context).pushReplacementNamed(tapHandler);
        },
      );
    }

    return Container(
      width: 230,
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).accentColor,
              child: Text('Cooking Up!',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor)),
            ),
            SizedBox(height: 20),
            buildListTile(
                title: 'Meals', icon: Icons.restaurant, tapHandler: '/'),
            buildListTile(
                title: 'Filters',
                icon: Icons.settings,
                tapHandler: FiltersScreen.routeName),
          ],
        ),
      ),
    );
  }
}
