import 'package:flutter/material.dart';
import 'calculator.dart';

class ExpandedButton extends StatelessWidget
{
  ExpandedButton({required this.onPressed, required this.child,required this.color});

  final VoidCallback onPressed;
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
     return Expanded(
       flex:1,
       child: FlatButton(
          child: child,
          color: color,
          onPressed: onPressed,
          ),
     );
  }


}

class ExpandedRow extends StatelessWidget{

  ExpandedRow({required this.children, required this.crossAxisAlignment});

  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:1,
      child: Row(
        children: children,
        crossAxisAlignment:  crossAxisAlignment,

      ),
    );
  }
  

}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Calculator", theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black26 ),
      home: CalculatorHomePage(title: "Flutter Calculator", ),

    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  CalculatorHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {

  String _str = "0";
  var _calculation = Calculation();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title: Text(widget.title),
      ),
      body: Column (
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Card(
            color:Colors.lightGreen[50],
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                 _str,
                textScaleFactor: 2.0,
              ),
            )
          ),
          ),
          Expanded(
          flex:1,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                flex:3,
                child: FlatButton(
                  onPressed: () { deleteAll(); },
                    color: Colors.black54,
                  child: Text(
                  "C",
                  style:TextStyle(color: Colors.white)
                  )
                ),
                ),
            Expanded(
                flex:1,
                child: FlatButton(
                    onPressed: () { deleteOne(); },
                    color: Colors.black87,
                    child: Text(
                        "<-",
                        style:TextStyle(color: Colors.white)
                    )
                ),
                ),
              ]
          ),
          ),
          Expanded(
            flex:4,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              Expanded(
              flex:3,
              child:
                Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        ExpandedRow(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              ExpandedButton(
                                  onPressed: () { add("7"); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "7",
                                      style:TextStyle(color: Colors.white)
                                  )
                              ),
                              ExpandedButton(
                                  onPressed: () { add("8"); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "8",
                                      style:TextStyle(color: Colors.white)
                                  )
                              ),
                              ExpandedButton(
                                  onPressed: () { add("9"); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "9",
                                      style:TextStyle(color: Colors.white)
                                  )
                              )

                            ]
                        ),
                        ExpandedRow(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              ExpandedButton(
                                  onPressed: () { add("4"); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "4",
                                      style:TextStyle(color: Colors.white)
                                  )
                              ),
                              ExpandedButton(
                                  onPressed: () { add("5"); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "5",
                                      style:TextStyle(color: Colors.white)
                                  )
                              ),
                              ExpandedButton(
                                  onPressed: () { add("6"); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "6",
                                      style:TextStyle(color: Colors.white)
                                  )
                              )

                            ]
                        ),
                        ExpandedRow(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              ExpandedButton(
                                  onPressed: () { add("1"); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "1",
                                      style:TextStyle(color: Colors.white)
                                  )
                              ),
                              ExpandedButton(
                                  onPressed: () { add("2"); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "2",
                                      style:TextStyle(color: Colors.white)
                                  )
                              ),
                              ExpandedButton(
                                  onPressed: () { add("3"); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "3",
                                      style:TextStyle(color: Colors.white)
                                  )
                              )

                            ]
                        ),
                        ExpandedRow(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              ExpandedButton(
                                  onPressed: () { add("0"); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "0",
                                      style:TextStyle(color: Colors.white)
                                  )
                              ),
                              ExpandedButton(
                                  onPressed: () { add("."); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      ".",
                                      style:TextStyle(color: Colors.white)
                                  )
                              ),
                              ExpandedButton(
                                  onPressed: () { getResult(); },
                                  color: Colors.blueAccent,
                                  child: Text(
                                      "=",
                                      style:TextStyle(color: Colors.white)
                                  )
                              )

                            ]
                        ),
                      ]

                   ),
                   ),
            Expanded(
                flex:1,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                  ExpandedButton(
                    child: Image.asset(
                      "icons/divide.png",
                    width: 10.0,
                      height: 10.0, ),
                    onPressed: () {add('÷');},
                    color: Colors.blue
                  ),
                  ExpandedButton(
                    child: Text('x'), onPressed: () {add('x');}, color:Colors.blue,
                  ),
                  ExpandedButton(
                    child: Text('-'), onPressed: () {add('-');}, color: Colors.blue,
                  ),
                  ExpandedButton(
                    child: Text('+'), onPressed: () {add('+');}, color: Colors.blue,
                  ), ],
                ),
               ),



              ]

          ),
          ),
        ]
      )
    );
  }

  void add(String a) {
    setState(
        (){
          _calculation.add(a);
          _str = _calculation.getString();
        }
    );
  }
  void deleteAll() {
    setState(
            (){
          _calculation.deleteAll();
          _str = _calculation.getString();
        }
    );


  }
  void deleteOne() {

    setState(
            (){
          _calculation.deleteOne();
          _str = _calculation.getString();
        }
    );
  }

  void getResult() { setState(() {
    try {
      _str = _calculation.getResult().toString();
    }
    on DivideByZeroException {
       _str = "You mustn't divide by 0";
    }
       finally {
      _calculation = new Calculation(); }
  }); }


}
