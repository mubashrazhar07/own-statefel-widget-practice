import 'package:flutter/material.dart' ;
void main() {
  runApp(
    const MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FlutterCourse(),
    );
  }
}
class FlutterCourse extends StatefulWidget {
  const FlutterCourse({Key? key}) : super(key: key);

  @override
  State<FlutterCourse> createState() => _FlutterState();
}

class _FlutterState extends State<FlutterCourse> {
TextEditingController Controller= TextEditingController();
int ? counter;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    counter=0;
    print('init stae called');
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('did change depeendencies is called');
  }
  @override
  void didUpdateWidget(covariant FlutterCourse oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didupdate widget is called');
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate is called');

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFul Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Counter: $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter= counter!+1;
          });
         
        },
        child: Icon(Icons.add),
      ),
    );
  }
}



