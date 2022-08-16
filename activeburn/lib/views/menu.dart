// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:active_burn_app/authentication/auth_methods.dart';
import 'package:active_burn_app/authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);
// ignore: use_key_in_widget_constructors
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Theme.of(context).backgroundColor,
                    // ignore: sort_child_properties_last
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(
                    'Hello User',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 75),
            child: Row(
              children: [
                Text(
                  '1 day streak,',
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.01,
                ),
                Text('0 kg gained'),
              ],
            ),
          ),
          const Divider(
            color: Colors.black54,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5475,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: ListTile(
                          title: Text('Try Premium For Free',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.027,
                                color: Color.fromARGB(255, 110, 107, 107),
                              ))),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: ListTile(
                          title: Text('Recipe Discovery',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.027,
                                color: Color.fromARGB(255, 110, 107, 107),
                              ))),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: ListTile(
                          title: Text('Progress',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.027,
                                color: Color.fromARGB(255, 110, 107, 107),
                              ))),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: ListTile(
                          title: Text('Nutrition',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.027,
                                color: Color.fromARGB(255, 110, 107, 107),
                              ))),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: ListTile(
                          title: Text('Goals',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.027,
                                color: Color.fromARGB(255, 110, 107, 107),
                              ))),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: ListTile(
                          title: Text('Recipes, Meals & Food',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.027,
                                color: Color.fromARGB(255, 110, 107, 107),
                              ))),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          minimumSize: const Size.fromHeight(50), // NEW
                        ),
                        onPressed: () {
                          logOut(context);
                          Fluttertoast.showToast(msg: "Logged Out");
                        },
                        child: const Text(
                          "Log out",
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      );
}
