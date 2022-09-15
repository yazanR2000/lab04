import 'package:flutter/material.dart';
import './information.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Welcome to our travel app",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/prefrence');
                  },
                  icon: Icon(
                    Icons.favorite,
                  ),
                  label: Text("Your Prefrence Page"),
                ),
                SizedBox(height: 15,),
                ElevatedButton.icon(
                  onPressed: () => Navigator.of(context).pushNamed('/information'),
                  icon: Icon(
                    Icons.favorite,
                  ),
                  label: Text("Fill your information"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
