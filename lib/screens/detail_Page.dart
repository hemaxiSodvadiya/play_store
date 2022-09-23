import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.menu_sharp,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4aCq3yXb6CUE106s79F_QdV3R9IsJPiWT-w&usqp=CAU'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Alto's Odyssey",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          "Noodlecake Studios Inc",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green.shade900,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const Text(
                          "Contains ads",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60,
                    height: 52,
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "4.6⭐",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                        Text("95K reviews",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    alignment: Alignment.center,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    height: 52,
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "5M+",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                        Text("Downloads",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    height: 52,
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.bookmark_border_rounded,
                          color: Colors.black,
                          size: 18,
                        ),
                        Text("Everyone",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      left: 156, right: 156, top: 10, bottom: 10),
                  primary: Colors.green.shade900, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: const Text("Install"),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://noodlecake.com/wp-content/uploads/2018/07/feature-AltosOdyssey-1280x720.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://play-lh.googleusercontent.com/cl8DbL_lchtnlgX87OiSV-FWtRfrC6neZXSozayxNWQ_BOlPXeFavjKyz4Pk5tyiBCc=w526-h296-rw'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://preview.redd.it/57fna31e6jd11.png?auto=webp&s=3613b9caba1a062e5eca9c60ee41093ff1045684'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "About this game",
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward,
                    size: 14,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Discover the endless desert",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 5, bottom: 5),
                    child: const Text(
                      "Action",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 5, bottom: 5),
                    child: const Text(
                      "Editors' choice",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "Ratings & reviews",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward,
                    size: 14,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 3,
                    child: Text(
                      "4.6",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Container(
                          height: 10,
                          width: 300,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 10,
                          width: 300,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 10,
                          width: 300,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 10,
                          width: 300,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 10,
                          width: 300,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
