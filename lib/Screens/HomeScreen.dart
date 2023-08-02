import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Home",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              iconSize: 40,
              icon: ImageIcon(
                  AssetImage('assets/icons/fluent_alert-20-regular.png')),
              color: Colors.black,
            )
          ],
          leading: Builder(builder: (context) {
            return (IconButton(
              icon: ImageIcon(AssetImage('assets/icons/Vector2.png')),
              color: Colors.black,
              iconSize: 40,
              onPressed: () {},
            ));
          }),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/akar-icons_home.png')),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon:
                  ImageIcon(AssetImage('assets/icons/ri_play-list-2-line.png')),
              label: 'Playlists',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(
                  'assets/icons/healthicons_ui-user-profile-outline.png')),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/Vector.png')),
              label: 'Sections',
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.chevron_left),
                  color: Colors.black,
                  iconSize: 20,
                  onPressed: () {},
                ),
                Column(
                  children: const [
                    Text(
                      "The best acoustics",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 157, 156, 161),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "For this month",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.chevron_right),
                  color: Colors.black,
                  iconSize: 20,
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 190,
              width: 363.2,
              margin: const EdgeInsets.fromLTRB(25, 29, 25, 30),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(132, 120, 246, 1),
                image: DecorationImage(
                  image: AssetImage("assets/image/122.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(30, 133, 120, 246),
                    offset: Offset(
                      0.0,
                      23.0,
                    ), //Offset
                    blurRadius: 58.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "The best acoustics",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(18, 13, 49, 1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: IconButton(
                    icon: const Icon(Icons.more_horiz),
                    color: const Color.fromRGBO(22, 18, 52, 1),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Container(
                  height: 70,
                  width: 102,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(132, 120, 246, 1),
                    image: DecorationImage(
                      image: AssetImage("assets/image/222.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(30, 133, 120, 246),
                        offset: Offset(
                          0.0,
                          23.0,
                        ), //Offset
                        blurRadius: 58.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        "Souret Elbakara",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Narrated by Hafs",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 157, 156, 161),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(132, 120, 246, 1),
                  radius: 20,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/playscreen');
                    },
                    icon: Icon(Icons.play_arrow),
                    iconSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Container(
                  height: 70,
                  width: 102,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(132, 120, 246, 1),
                    image: DecorationImage(
                      image: AssetImage("assets/image/222.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(30, 133, 120, 246),
                        offset: Offset(
                          0.0,
                          23.0,
                        ), //Offset
                        blurRadius: 58.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        "Souret Elbakara",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Narrated by Hafs",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 157, 156, 161),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                const CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  radius: 20,
                  child: Icon(
                    (Icons.play_arrow),
                    size: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
