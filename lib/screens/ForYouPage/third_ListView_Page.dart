import 'package:flutter/material.dart';

import '../global.dart';

class ThirdListPage extends StatefulWidget {
  const ThirdListPage({Key? key}) : super(key: key);

  @override
  State<ThirdListPage> createState() => _ThirdListPageState();
}

class _ThirdListPageState extends State<ThirdListPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Suggested for you",
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
                for (var i = 0; i < Global.allList3.length; i++)
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
                                      "${Global.allList3[i].image}"),
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Text(
                                    "${Global.allList3[i].name}",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "${Global.allList3[i].rank}",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
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
