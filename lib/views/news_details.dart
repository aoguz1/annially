import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class NewsDetails extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String desc;
  NewsDetails(
      {@required this.desc, @required this.title, @required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(
              "assets/flag_grey.png",
              height: 20,
              width: 20,
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Container(
                    width: 115,
                    height: 115,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imgUrl),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Fontisto.comment,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("10 Yorum"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Pamukkale/Denizli"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesome5Solid.dog,
                          size: 28,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          FontAwesome5Solid.cat,
                          size: 28,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          FontAwesome5Solid.kiwi_bird,
                          size: 28,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          MaterialCommunityIcons.fish,
                          size: 28,
                          color: Colors.grey.shade500,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Material(
                        elevation: 6,
                        borderRadius: BorderRadius.circular(9),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("Rezarvasyon Yap"),
                          ),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 10,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 10,
                    child: Card(
                      elevation: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8.0),
                            child: Text(
                              "Hakkımda",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                            child: Text(
                              desc,
                              style: TextStyle(height: 1.70),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 10,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 10,
                    child: Card(
                      elevation: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8.0),
                            child: Text(
                              "Evcil Hayvan Tecrübelerim",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                            child: Text(
                              desc,
                              style: TextStyle(height: 1.70),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 10,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 10,
                    child: Card(
                      elevation: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8.0),
                            child: Text(
                              "Evim Hakkında",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                            child: Text(
                              desc,
                              style: TextStyle(height: 1.70),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
