import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
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
                const Text('Third Page'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/Second');
                  },
                  child: const Text('Back'),
                )
              ],
            ),
          )),
    );
  }
}
