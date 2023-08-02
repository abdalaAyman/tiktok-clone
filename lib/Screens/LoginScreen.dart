import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              height: 360.13,
              width: 363.2,
              margin: const EdgeInsets.fromLTRB(25, 29, 25, 30),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(132, 120, 246, 1),
                image: DecorationImage(
                  image: AssetImage("assets/image/12.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                  bottomLeft: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
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
              child: const Padding(
                padding: EdgeInsets.fromLTRB(300, 300, 0, 0),
                child: CircleAvatar(
                  backgroundColor: const Color.fromRGBO(132, 120, 246, 1),
                  radius: 35,
                  child: Icon(
                    (Icons.play_arrow),
                    size: 50,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              )),
          const Text(
            "Qura'an reader",
            style: TextStyle(
              fontSize: 40,
              color: Color.fromRGBO(20, 16, 51, 1),
              fontWeight: FontWeight.w700,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Listen to the best Quran reciter \n anytime and anywhere",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(157, 156, 161, 1),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/homescreen');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(132, 120, 246, 1)),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 30)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27))),
              ),
              child: const Text(
                "Log In",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/homescreen');
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    color: Color.fromRGBO(132, 120, 246, 1), fontSize: 15),
              ))
        ],
      ),
    );
  }
}
