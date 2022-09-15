import 'dart:ui';

import 'package:flutter/material.dart';
import '../widgets/radio_tile.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  String dropdownvalue = '1 Person';
  final List<Map<String, dynamic>> _check = [
    {"value": false, "text": "Pets", "sub_text": "Eg.Cats-Dogs-Rabbits","icon" : const Icon(Icons.pets)},
    {"value": false, "text": "Mdicine", "sub_text": "Eg.Panadol","icon" : const Icon(Icons.local_hospital)},
    {"value": false, "text": "Weapon", "sub_text": "Eg.Gun","icon" : const Icon(Icons.cancel_outlined)},
  ];
  bool _pets = false;
  bool _medicine = false;
  bool _weapon = false;
  String _groubValue = "Yazan";
  var items = ['1 Person', '2-5 Person', '6-10 Person'];

  void _changeRadio(String val) {
    setState(() {
      _groubValue = val;
    });
  }

  Widget _headerTitle(String text){
    return  Text(
              text,
              style:const TextStyle(
                color: Colors.redAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            const Text(
              "Please enter your information",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            _headerTitle("How Many Person"),
            
            const Divider(
              thickness: 10,
              color: Colors.redAccent,
            ),
            Container(
              width: double.infinity,
              color: Colors.grey,
              alignment: Alignment.center,
              child: DropdownButton(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _headerTitle("Please Select Your Class"),
            
            const Divider(
              thickness: 10,
              color: Colors.redAccent,
            ),
            RadioTile("Business", "Hot!! ONLY 200\$ per person", "radio1", null,
                _groubValue, _changeRadio),
            RadioTile("Economy", "HOT!!150\$ per person", "radio2", null,
                _groubValue, _changeRadio),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Please Select What ever you have during the trip",
              style: TextStyle(
                  wordSpacing: 10,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
            const Divider(
              thickness: 10,
              color: Colors.redAccent,
            ),
            ListView.builder(
              itemCount: _check.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => CheckboxListTile(
                title: Text(_check[index]['text']),
                subtitle: Text(_check[index]['sub_text']),
                value: _check[index]['value'],
                secondary:  _check[index]['icon'],
                onChanged: (val) {
                  setState(() {
                    _check[index]['value'] = val;
                  });
                },
              ),
            ),

            ElevatedButton.icon(
              icon: Icon(Icons.home),
              onPressed: () => Navigator.of(context).pop(),
              label: Text("Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}
