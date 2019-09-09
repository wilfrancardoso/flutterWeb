import 'package:flutter_web/material.dart';
import 'package:provider/provider.dart';
import 'package:web_flutter/core/view_model/navigation_view_model.dart';
import 'package:web_flutter/core/view_model/processos_view_model.dart';
import 'package:web_flutter/ui/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => NavigationViewModel(),
        ),
        ChangeNotifierProvider(
          builder: (context) => ProcessosViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'PAE 4.0',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
