import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _basicColor = Colors.grey;

  Color blue = Colors.blue;
  Color red = Colors.red;
  Color green = Colors.green;
  Color orange = Colors.orange;
  Color reset = Colors.grey;

  void _changeColor (Color _newColor) {
    setState(() {
      _basicColor = _newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Switch'),
        backgroundColor: _basicColor,
        actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: (){_changeColor(reset);},
            ),
            SizedBox(width: 20.0,)
          ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(30),
            child: Icon(
              Icons.ac_unit,
              size: 80.0,
              color: _basicColor,
            ),
          ),
          Column(
            children: <Widget>[            
              Text(
                'Choose a color:',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){_changeColor(blue);},
                    padding: EdgeInsets.all(40),
                    color: Colors.blue,
                  ),
                  RaisedButton(
                    onPressed: (){_changeColor(red);},
                    padding: EdgeInsets.all(40),
                    color: Colors.red,
                  ),
                  RaisedButton(
                    onPressed: (){_changeColor(green);},
                    padding: EdgeInsets.all(40),
                    color: Colors.green,
                  ),
                  RaisedButton(
                    onPressed: (){_changeColor(orange);},
                    padding: EdgeInsets.all(40),
                    color: Colors.orange,
                  )
                ],
              ),
              SizedBox(height: 100.0,),
            ],
          )
        ],
      )
    );
  }
}