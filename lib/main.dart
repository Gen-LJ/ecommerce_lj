import 'package:ecommerce_lj/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: LJAppTheme.lightTheme,
      darkTheme: LJAppTheme.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('I am flutter developer'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(onPressed: (){
              }, child: Text('flutter')),
            ),
            SizedBox(height: 10,),
            Center(child: OutlinedButton(onPressed: (){

            }, child: Text('flutter')),),
            SizedBox(height: 10,),
            Text('This is Ubuntu test?'),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
              ),
            )

          ],
        ),
      ),
    );
  }
}
