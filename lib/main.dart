import 'package:custom_list_tile/custom_list_tile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CustomListTitleExample(),
    );
  }
}

class CustomListTitleExample extends StatelessWidget {
  const CustomListTitleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: const Text("Custom ListTile Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return CustomListTile(
                title: const Text(
                  "My List Title",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subTitle: const Text("this is subtitle"),
                leading: Text((index + 1).toString()),
                trailing: const Icon(Icons.person),
                height: 65,
                tileColor: Colors.white,
                shadowColor: Colors.grey,
              );
            }),
      ),
    );
  }
}
