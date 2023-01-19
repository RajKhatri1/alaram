import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool lan1 = true;
  bool lan2 = false;
  bool lan3 = false;
  bool lan4 = false;
  bool lan5 = false;
  bool lan6 = false;
  bool lan7 = false;
  String data = "selected";
  bool onOff = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Alaram"),
          centerTitle: true,
          actions: [Switch(value:onOff, onChanged: (value) {
            setState(() {
              onOff=value;
            });
          },)],
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black45,
              child: Center(
                  child: Text(
                "select day",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              )),
            ),
            Row(
              children: [
                Checkbox(
                  value: lan1,
                  onChanged: (value) {
                    setState(() {
                      lan1 = value!;
                    });
                  },
                ),
                Text("Monday"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: lan2,
                  onChanged: (value) {
                    setState(() {
                      lan2 = value!;
                    });
                  },
                ),
                Text("Tuesday"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: lan3,
                  onChanged: (value) {
                    setState(() {
                      lan3 = value!;
                    });
                  },
                ),
                Text("Wednesday"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: lan4,
                  onChanged: (value) {
                    setState(() {
                      lan4 = value!;
                    });
                  },
                ),
                Text("Thursday"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: lan5,
                  onChanged: (value) {
                    setState(() {
                      lan5 = value!;
                    });
                  },
                ),
                Text("Fryday"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: lan6,
                  onChanged: (value) {
                    setState(() {
                      lan6 = value!;
                    });
                  },
                ),
                Text("Saturday"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: lan7,
                  onChanged: (value) {
                    setState(() {
                      lan7 = value!;
                    });
                  },
                ),
                Text("Sunday"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black45,
              child: Center(
                  child: Text(
                "select time",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              )),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio(
                  value: "6:00 AM",
                  groupValue: data,
                  onChanged: (value) {
                    setState(() {
                      data = value!;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("6.00 AM"),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio(
                  value: "7:00 AM",
                  groupValue: data,
                  onChanged: (value) {
                    setState(() {
                      data = value!;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("7.00 AM"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
