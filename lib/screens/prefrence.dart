import 'package:flutter/material.dart';
import '../widgets/radio_tile.dart';

class Prefrence extends StatefulWidget {
  const Prefrence({super.key});

  @override
  State<Prefrence> createState() => _PrefrenceState();
}

class _PrefrenceState extends State<Prefrence> {
  String _groubValue = "Yazan";
  //List<Map<String, String>> _radio = [{}];

  void _changeRadio(String val) {
    setState(() {
      _groubValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("Back To Home Page"),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.black,
                      width: double.infinity,
                      child: const Text(
                        "Where you want to travel?",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    RadioTile("Jordan", "Eg.Amman", "radio1",
                        Icon(Icons.travel_explore), _groubValue, _changeRadio),
                    RadioTile("Egypt", "Eg.Sharm-aldhaikh", "radio2",
                        Icon(Icons.travel_explore), _groubValue, _changeRadio),
                    RadioTile("Turkia", "Eg.Istanbul", "radio3",
                        Icon(Icons.travel_explore), _groubValue, _changeRadio),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
