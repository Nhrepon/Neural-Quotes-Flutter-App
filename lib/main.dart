import 'package:flutter/material.dart';



void main() {
  runApp(const NeuralQuoutes());
}



class NeuralQuoutes extends StatelessWidget {
  const NeuralQuoutes({super.key});
  final String title = "Neural Quotes";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        home: Scaffold(


          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            backgroundColor: Colors.green,
            leading: Icon(Icons.menu),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.verified_user_sharp),
                tooltip: "Appbar actions",
                onPressed: (){

                },
              )
            ],
          ),





          body: Center(
            child: Text("data", style: TextStyle(fontSize: 32),),
          ),





          bottomNavigationBar: NavigationBar(
            backgroundColor: Colors.green,
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.trending_down), label: "Trending"),
              NavigationDestination(icon: Icon(Icons.bookmark), label: "Bookmark"),
            ],


          ),





        )

    );
  }
}



