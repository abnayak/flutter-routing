import "package:flutter/material.dart";

void main() {
  ThemeData themeData = new ThemeData(
    canvasColor: Colors.deepPurple,
  );

  runApp(new MaterialApp(
    home: new Home(),
    theme: themeData,
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.push(context, new SetTimerPage());
          },
          child: new Text("Timer"),
        ),
      ),
    );
  }
}

class ClockPage extends MaterialPageRoute<Null> {
  ClockPage()
      : super(builder: (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.popUntil(
                context, ModalRoute.withName(Navigator.defaultRouteName));
          },
          child: new Text("Home"),
        ),
      ),
    );
  });
}

class SetTimerPage extends MaterialPageRoute<Null> {
  SetTimerPage()
      : super(builder: (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Select duration of meditation"),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.push(context, new ClockPage());
          },
          child: new Text("Start Meditation"),
        ),
      ),
    );
  });
}