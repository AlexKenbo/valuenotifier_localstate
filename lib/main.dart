import 'package:flutter/material.dart';

import 'env.dart';
import 'navdata.dart';
import 'navdata_state.dart';

//! Хорошо если мы создаем ValueNotifier в том же виджете, где и используем - как тут.
//! Но если обновляем в родителе-виджете, а изменяем в ребенке-виджете, то нужно передать через конструктор
void main() {
  Global.navDataValueNotifier = NavDataValueNotifier(NavData((b) => b
    ..book = 'start'
    ..chapter = 1));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ValueNotifier',
      home: MyHomePage(title: 'ValueNotifier'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight),
        child: ValueListenableBuilder(
          builder: (BuildContext context, NavData value, Widget child) {
            return AppBar(
              actions: <Widget>[
                          FlatButton(
              onPressed: () => null,
              child: Text(
                '[ '+ value.book +' ]',
                style: TextStyle(fontSize: 22, color: Colors.white),
              )),
          FlatButton(
              onPressed: () => null,
              child: Text('[ '+value.chapter.toString() +' ]', 

                  style: TextStyle(fontSize: 22, color: Colors.white))),
          SizedBox(width: 10),
          IconButton(icon: Icon(Icons.play_circle_filled), onPressed: null),
          IconButton(icon: Icon(Icons.translate), onPressed: null),
              ],
            );
          },
          valueListenable: Global.navDataValueNotifier,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Вы нажали кнопку столько раз:'),
            ValueListenableBuilder(
              builder: (BuildContext context, NavData value, Widget child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('${value.chapter}'),
                    //!child,
                  ],
                );
              },
              valueListenable: Global.navDataValueNotifier,
              //!child: goodJob, //! Если дорого создавать виджет при каждом вызове ValueListenableBuilder
            )
          ],
        ),
      ),
      floatingActionButton: ChildButton(),
    );
  }
}

class ChildButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ThreeLevelChildButton();
  }
}

class ThreeLevelChildButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.plus_one),
      onPressed: () async {
        print(Global.navDataValueNotifier.value);  
        int lastCounter = Global.navDataValueNotifier.value.chapter;
        
        print('widget ' + Global.navDataValueNotifier.value.hashCode.toString());
        Global.navDataValueNotifier.incriment(lastCounter);
        
        var newValue = Global.navDataValueNotifier.value.rebuild((b) => b
          ..book= 'update');

        print(newValue);
        Global.navDataValueNotifier.value = newValue;

      },
    );
  }
}

