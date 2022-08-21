import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).backgroundColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    "Find a Plan \n\nMeal plans, workout plans and\nmore. Start a plan, follow along\nand reach your goals.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 235, 230, 230),
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(color: Colors.black),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Available Plans",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Image.asset("assets/food.png"),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Intro to Macro Tracking",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    const Text(
                      "28 days",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    const Text(
                      "Daily",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * .05,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).backgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                leading: const Icon(
                  Icons.search,
                ),
                title: TextFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.white60),
                    border: InputBorder.none,
                    hintText: "Search for a diet",
                  ),
                ),
                tileColor: Theme.of(context).backgroundColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
