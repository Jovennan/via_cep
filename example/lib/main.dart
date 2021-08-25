import 'package:flutter/material.dart';
import 'package:via_cep_search/via_cep_search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<ViaCepSearch>(
          future: ViaCepSearch.getInstance('58960000'),
          builder: (context, snapshot){ 
            return Text('CEP ${snapshot.data == null ? "" : snapshot.data}');
          }        
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}