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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  final String title = "Neural Quotes";
  List<String> dataList = [
    "Nur Hossain ",
    "Repon",
    "Sharmin akter",
    "Sharmin",
    "Sharmin",
    "Sharmin",
    "Repon",
    "Sharmin akter",
    "Repon",
    "Sharmin akter",
    "Sharmin akter",
    "Sharmin akter",
    "Repon",
    "Repon",
    "Repon",
    "Sharmin akter",
    "Sharmin akter",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.green,
        //leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Icon(Icons.verified_user_sharp),
            tooltip: "Appbar actions",
            onPressed: () {},
          )
        ],
      ),


      drawer: Drawer(
        width: 300,
        shadowColor: Colors.black,
        child: Column(
          children: [Text("Drawer title")],
        ),
      ),



      body: Scrollbar(
        child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(dataList[index]),
              );
            }),
      ),




      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.green,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.trending_down), label: "Trending"),
          NavigationDestination(icon: Icon(Icons.bookmark), label: "Bookmark"),
        ],
      ),
    );
  }
}




