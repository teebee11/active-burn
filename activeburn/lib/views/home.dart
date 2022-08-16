import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundColor: Theme.of(context).backgroundColor,
                  foregroundColor: Colors.black,
                  child: const Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
                title: const Text(
                  "Healthy Habits\nstart here.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 110, 107, 107), fontSize: 28),
                ),
                trailing: const Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).backgroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Calories\n",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 235, 230, 230)),
                        ),
                        Text(
                          "Remaining = Goal - Food + Exercise\n",
                          style: TextStyle(
                              color: Color.fromARGB(255, 235, 230, 230)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundColor:
                                    Color.fromARGB(255, 110, 107, 107),
                                child: CircleAvatar(
                                    radius: 50,
                                    backgroundColor:
                                        Color.fromARGB(255, 158, 156, 156),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "1,230",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          "Remaining",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    )),
                              ),
                              const Text(
                                  "Base Goal\n1,230\n\nExercise\n0\n\nFood\n0",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 235, 230, 230))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.more_horiz,
                size: 100,
              ),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.02,
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
