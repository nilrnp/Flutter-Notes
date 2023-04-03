import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/column_demo.dart';
import 'package:my_first_flutter_project/next_page.dart';
import 'package:my_first_flutter_project/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print("The counter has been increased"); // will be printed on console when button is clicked (used for debugging)
    });

    // Navigator.push(
    //   context,
    // MaterialPageRoute(builder: (context) => MySecondPage(title: 'Flutter Demo Second Page')),
    // );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Updated " + widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              width: 200,
              height: 200,

              child:
              const Image(image: AssetImage('assets/img.png')
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,

              child: const Text(
                  'App Name',
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      backgroundColor: Colors.black
                  )
              ),
            ),


            Container(
              child: const Text(
                'You have clicked the button this many times:',
              ),
            ),

            Text(
              'Current Click: $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const TextField(

              obscureText: false,

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),

            ),

            TextButton(

              onPressed: ()
              {
                setState((){
                  _counter ++;
                });
              },

              child: Text('Add 1'),
            ),

            ElevatedButton(

                onPressed: (){
                  setState((){
                    _counter = 0;
                  });
                },

                child: Text('Reset Count')
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ColumnDemoPage(title: 'Column Demo Page')),
        );},
        tooltip: 'Increment',
        child: const Icon(Icons.accessibility_new),
      ),
    );
  }
}
