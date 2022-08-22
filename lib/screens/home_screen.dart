import 'package:exam_prep_app/widgets/grid_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Name"),
        leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.purple,
              child: Text('U'),
            )),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.logout,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: <Widget>[
              Image(
                image: const AssetImage("assets/education.jpeg"),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Center(
                    child: Center(
                      child: Text(
                        'Subjects',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: const <Widget>[
              GridTiles(
                image: "assets/physics.png",
                title: 'PHYSICS',
              ),
              GridTiles(
                image: "assets/chemistry.png",
                title: 'CHEMISTRY',
              ),
              GridTiles(
                image: "assets/botany.png",
                title: 'BOTANY',
              ),
              GridTiles(
                image: "assets/zoology.png",
                title: 'ZOOLOGY',
              ),
              GridTiles(
                image: "assets/physics.png",
                title: 'TAKE TEST',
              ),
              GridTiles(
                image: "assets/physics.png",
                title: 'ASK EXPERT',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
