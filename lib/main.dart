import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements_options/counter_model.dart';
import 'package:state_managements_options/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: DemoPage(),

        home: CounterScreen(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  int _counter = 0;

  void _increment() {
    setState(() => _counter++);
  }

  void _decrement() {
    setState(() => _counter--);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: TextStyle(fontSize: 35.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.minimize,
                      color: Colors.red,
                      size: 30.0,
                    ),
                    onPressed: _decrement),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                  onPressed: _increment,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
