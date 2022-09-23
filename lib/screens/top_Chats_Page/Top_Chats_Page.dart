import 'package:flutter/material.dart';

import '../global.dart';

class TopChatsPage extends StatefulWidget {
  const TopChatsPage({Key? key}) : super(key: key);

  @override
  State<TopChatsPage> createState() => _TopChatsPageState();
}

class _TopChatsPageState extends State<TopChatsPage> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                Text("Show instaaled apps"),
                Spacer(),
                Switch(
                    value: switchValue,
                    onChanged: (val) {
                      setState(() {
                        switchValue = val;
                      });
                    })
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < Global.allTopMenu.length; i++)
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 5, bottom: 5),
                          child: Text(
                            "${Global.allTopMenu[i].name}",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                  children: [
                    for (var i = 0; i < Global.allTop.length; i++)
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed('${Global.allTop[i].route}');
                              print("tap");
                            },
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 5, bottom: 20),
                                  child: Text(
                                    "${Global.allTop[i].id}",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          "${Global.allTop[i].image}"),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${Global.allTop[i].name}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "${Global.allTop[i].des}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        "${Global.allTop[i].rank}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Divider(color: Colors.white, height: 10),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
