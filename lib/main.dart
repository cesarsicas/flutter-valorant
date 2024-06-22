import 'package:flutter/material.dart';

import 'AgentModel.dart';

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
        useMaterial3: true,
      ),
      home: AgentsScreen(
        agents: AgentModel.agentsSample,
      ),
    );
  }
}

class AgentsScreen extends StatelessWidget {
  List<AgentModel> agents;

  AgentsScreen({required this.agents, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 15, 24, 35),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  fit: BoxFit.cover,
                  height: 250,
                  'assets/images/agentsbackground.png',
                  opacity: AlwaysStoppedAnimation(.4),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Column(
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
                  ),
                )
              ],
            ),
            Container(
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(agents.length,
                    (index) => AgentItem(agentModel: agents[index])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AgentItem extends StatelessWidget {
  AgentModel agentModel;

  AgentItem({required this.agentModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
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
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          color: agentModel.color)),
                ),
              ),
              Image.network(height: 300, fit: BoxFit.fill, agentModel.imageUrl),
            ],
          ),
        ));
  }
}

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
