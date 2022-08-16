import 'package:active_burn_app/authentication/sign_in.dart';
import 'package:flutter/material.dart';

class StartUp extends StatelessWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.asset(
              "assets/upper circle.png",
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.18,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Image.asset("assets/active_burn.png")),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Get things done with Active Burn",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(40),
                child: Text(
                  "We are here to provide you fast\n services on the time and have all featured\n management system for our clients.\n Our client satisfaction is our first \npriority",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => signin()));
                  },
                  child: const Text(
                    "Get Started",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
