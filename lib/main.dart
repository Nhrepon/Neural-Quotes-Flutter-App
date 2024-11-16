import 'package:flutter/cupertino.dart';
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
    AlertDialog alert;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.green,
        //leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: IconButton(onPressed: (){



            showDialog(
              barrierColor: Colors.black26,
                barrierDismissible: true,
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Alert"),
                    content: Text("Messages"),
                    actions: [
                      TextButton(onPressed: (){}, child: Text("No")),
                      TextButton(onPressed: (){}, child: Text("Yes"))
                    ],
                  );
                }
            );



            },
                icon: const Icon(Icons.supervised_user_circle)),
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
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 20),
                shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Row(
                        children: [
                          Expanded(child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(dataList[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              Text(dataList[index], style: TextStyle(fontSize: 14,),),
                            ],
                          ),),
                          Image.asset('assets/images/img.jpg', width: 80,),



                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),




      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.green,
        selectedIndex: 1,
        shadowColor: Colors.red,
        onDestinationSelected: (value) => value,
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




