import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/main.dart';

class ColumnDemoPage extends StatefulWidget {
  const ColumnDemoPage({Key? key, required Object title}) : super(key: key);

  @override
  State<ColumnDemoPage> createState() => _ColumnDemoPageState();
}

class _ColumnDemoPageState extends State<ColumnDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Demo'),
      ),
      body: Column(
        // can be changed to row layout
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 20, // higher flex means it takes up more space on screen
            child: Text('Title 2'),
          ),
          Expanded(
              flex: 25,
              child: Container(
                alignment: Alignment.center,
                child: Text('Title 2'),
              )),
          Row(
            children: [
              Expanded(
                flex: 20,
                child: ElevatedButton(onPressed: null, child: Text('Login')),
              ),
              Expanded(
                flex: 20,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyHomePage(title: 'Back 2 Home')),
                      );
                    },
                    child: Text('Go Back')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
