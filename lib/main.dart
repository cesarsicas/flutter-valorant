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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AgentsScreen(),
    );
  }
}

class AgentsScreen extends StatelessWidget {
  const AgentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 15, 24, 35),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  fit: BoxFit.cover,
                  height: 250,
                  'assets/images/agentsbackground.png',
                  opacity: AlwaysStoppedAnimation(.4),
                ),
                Column(
                  children: [
                    Text("CHOOSE YOUR\nFAVORITE AGENT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text(
                      "Find more ways to plant the Spike and style on your enemyes with scrappers, strategists, and hunters of every description.",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                      textAlign: TextAlign.center,
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            //color: Colors.black87,
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              // Generate 100 widgets that display their index in the List.
              children: [
                AgentItem(
                    url:
                        "https://media.valorant-api.com/agents/eb93336a-449b-9c1b-0a54-a891f7921d69/fullportrait.png",
                    color: Color.fromARGB(230, 232, 130, 12)),
                AgentItem(
                    url:
                        "https://media.valorant-api.com/agents/9f0d8ba9-4140-b941-57d3-a7ad57c6b417/fullportrait.png",
                    color: Color.fromARGB(230, 202, 85, 22)),
                AgentItem(
                    url:
                        "https://media.valorant-api.com/agents/569fdd95-4d10-43ab-ca70-79becc718b46/fullportrait.png",
                    color: Color.fromARGB(230, 2, 182, 151)),
                AgentItem(
                    url:
                        "https://media.valorant-api.com/agents/320b2a48-4d9b-a075-30f1-1f93a9b638fa/fullportrait.png",
                    color: Color.fromARGB(230, 47, 73, 198)),
                AgentItem(
                    url:
                        "https://media.valorant-api.com/agents/707eab51-4836-f488-046a-cda6bf494859/fullportrait.png",
                    color: Color.fromARGB(230, 5, 159, 64)),
                AgentItem(
                    url:
                        "https://media.valorant-api.com/agents/117ed9e3-49f3-6512-3ccf-0cada7e3823b/fullportrait.png",
                    color: Color.fromARGB(230, 146, 146, 150)),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class AgentItem extends StatelessWidget {
  String url;
  Color color;

  AgentItem({required this.url, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 300,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: 140,
                width: 300,
                child: ClipPath(
                  clipper: TsClip(),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: color)),
                ),
              ),
              Image.network(height: 300, fit: BoxFit.fill, url),
            ],
          ),
        ));
  }
}

//x ------
//y ||
class TsClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height / 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

// class TsClip extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height);
//     path.lineTo(size.height, size.longestSide);
//     path.lineTo(size.width, size.height /2);
//     //path.lineTo(size.height/2, 0);
//
//
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

// class TsClip extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 100);
//     path.lineTo(size.width / 2, size.height);
//     path.lineTo(size.width, size.height - 100);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
