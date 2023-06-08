import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(const HomePage());
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black54,
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(''),
                  ),
                  title: Text('Bem vindo', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white
                  )),
                  subtitle: Text('teste123', style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white70
                  )),
                ),
                const SizedBox(height: 30,)
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100)
                )
              ),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  itemDeshboard('Game1', CupertinoIcons.play_rectangle, Colors.red),
                  itemDeshboard('Game2', CupertinoIcons.play_rectangle_fill, Colors.yellow),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  itemDeshboard(String title, IconData iconData, Color background) => Container(
    decoration: BoxDecoration(
      color: Colors.black38,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0,5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          blurRadius: 5
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle
          ),
          child: Icon(iconData, color:Colors.white70),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(title, style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );
}

