import 'package:flutter/material.dart';
import 'package:neural_quotes/screen/createScreen.dart';


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
  // List<String> dataList = [
  //   "Nur Hossain ",
  //   "Repon",
  //   "Sharmin akter",
  //   "Sharmin",
  //   "Sharmin",
  //   "Sharmin",
  //   "Repon",
  //   "Sharmin akter",
  //   "Repon",
  //   "Sharmin akter",
  //   "Sharmin akter",
  //   "Sharmin akter",
  //   "Repon",
  //   "Repon",
  //   "Repon",
  //   "Sharmin akter",
  //   "Sharmin akter",
  // ];
var dataList = [
  {"name":"Nur Hossain", "img":"https://cdn.pixabay.com/photo/2025/03/09/10/16/sunrise-9456871_1280.jpg"},
  {"name":"Repon", "img":"https://cdn.pixabay.com/photo/2025/03/22/12/58/palm-warbler-9486896_640.jpg"},
  {"name":"Sharmin", "img":"https://cdn.pixabay.com/photo/2025/04/16/06/11/woman-9536868_640.jpg"},
  {"name":"Nur Hossain", "img":"https://cdn.pixabay.com/photo/2025/04/11/10/50/bird-9528238_640.jpg"},
  {"name":"Nur Hossain", "img":"https://cdn.pixabay.com/photo/2025/04/11/10/50/bird-9528238_640.jpg"},
  {"name":"Nur Hossain", "img":"https://cdn.pixabay.com/photo/2025/04/11/10/50/bird-9528238_640.jpg"},
  {"name":"Nur Hossain", "img":"https://cdn.pixabay.com/photo/2025/04/11/10/50/bird-9528238_640.jpg"},
  {"name":"Nur Hossain", "img":"https://cdn.pixabay.com/photo/2025/04/11/10/50/bird-9528238_640.jpg"},
  {"name":"Nur Hossain", "img":"https://cdn.pixabay.com/photo/2025/04/11/10/50/bird-9528238_640.jpg"},
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
        child: ListView(
          children: [
            const DrawerHeader(child: Center(child: Text("Drawer title"))),
            Container(
                width: double.infinity,
                child: Image.network(dataList[0]["img"]!, fit: BoxFit.fill,)
            ),
          ],
        ),
      ),

      body: Createscreen(),
      // GridView.builder(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //     childAspectRatio: 1.4,
      //   ),
      //     padding: const EdgeInsets.all(8),
      //     itemCount: dataList.length,
      //     itemBuilder: (context, index) {
      //       return GestureDetector(
      //         onTap: (){ShowSnackBarMessage(context, "On tap work at index number: $index");},
      //         onDoubleTap: (){ShowSnackBarMessage(context, "On double tap work at index number: $index");},
      //         onLongPress: (){ShowSnackBarMessage(context, "On long press work at index number: $index");},
      //         child: Padding(
      //           padding: const EdgeInsets.all(8),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text(dataList[index]["name"]!),
      //               const SizedBox(height: 8,),
      //               Image.network(dataList[index]["img"]!, fit: BoxFit.cover,width: double.infinity,height: 120,),
      //
      //             ],
      //           ),
      //         ),
      //       );
      //     }),



      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.pushNamed(context, Createscreen.name);}, ),

      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.green,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.trending_down), label: "Trending"),
          NavigationDestination(icon: Icon(Icons.bookmark), label: "Bookmark"),
        ],
      ),
    );


  }
}

void ShowSnackBarMessage(BuildContext context, String message){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
  );
}





