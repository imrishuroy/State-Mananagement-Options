import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements_options/counter_model.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);
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
              '${counter.currentCounter}',
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
                  onPressed: () => counter.increment(),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                  onPressed: () => counter.decremnet(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
