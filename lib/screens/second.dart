import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Push Named'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                const Text('Second Page'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/Third');
                  },
                  child: const Text('Next'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/Home');
                  },
                  child: const Text('Back'),
                )
              ],
            ),
          )),
    );
  }
}
