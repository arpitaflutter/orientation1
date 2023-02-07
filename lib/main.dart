import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()
{

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.purple,systemNavigationBarColor: Colors.green));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    theme(),
  );
}


class theme extends StatefulWidget {
  const theme({Key? key}) : super(key: key);

  @override
  State<theme> createState() => _themeState();
}

class _themeState extends State<theme> {

  bool isChange = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: OrientationBuilder(builder: (context, orientation) {
            return Scaffold(
              body: Column(
                children: [
                  Text("${orientation.name}",style: Theme.of(context).textTheme.headline1,),
                ],
              ),
            );
          },)
      ),
    );
  }
}
