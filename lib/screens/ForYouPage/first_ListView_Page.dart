import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class FirstListPage extends StatefulWidget {
  const FirstListPage({Key? key}) : super(key: key);

  @override
  State<FirstListPage> createState() => _FirstListPageState();
}

class _FirstListPageState extends State<FirstListPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Recommended for you",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward,
                color: Colors.black54,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i = 0; i < Global.allList1.length; i++)
                  Row(
                    children: [
                      Container(
                        height: 160,
                        width: 100,
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "${Global.allList1[i].image}"),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Text(
                                    "${Global.allList1[i].name}",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "${Global.allList1[i].rank}",
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
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
