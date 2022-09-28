import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  List<String> items = ['Item1', 'Item2', 'Item3', 'Item4'];
  String? selectedItem = 'Item1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title")),
      body: SizedBox(
        width: 240,
        child: Center(
            child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 3, color: Colors.blue)),
          ),
          value: selectedItem,
          items: items
              .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: TextStyle(fontSize: 20),
                  )))
              .toList(),
          onChanged: ((value) => setState(() {
                selectedItem = value;
              })),
        )),
      ),
    );
  }
}
