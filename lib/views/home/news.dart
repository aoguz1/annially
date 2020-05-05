import 'package:doglife/data/news_data.dart';
import 'package:doglife/models/news_model.dart';
import 'package:doglife/views/news_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<NewsModel> news = new List<NewsModel>();

  @override
  void initState() {
    news = getNews();
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(

    

          body: ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return NewsTile(
              newsImgUrl: news[index].newsImgUrl,
              title: news[index].title,
              desc: news[index].desc,
            );
          }),
    );
  }
}

class NewsTile extends StatelessWidget {
  final String newsImgUrl;
  final String title;
  final String desc;
  NewsTile({this.desc, this.title, this.newsImgUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewsDetails(
                      imgUrl: newsImgUrl,
                      title: title,
                      desc: desc,
                    )));
      },
      child: Container(
        
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(6),
          shadowColor: Colors.grey.withOpacity(0.5),
          child: Container(
           
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    newsImgUrl,
                    height: 80,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(0xff3B3B3B),
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(desc,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xff3B3B3B).withOpacity(0.6),
                          ),),
                          SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("İstanbul",style: TextStyle(fontSize: 13),),
                            Text("Öğrenci",style: TextStyle(fontSize: 13),),
                            Row(

                              children: [

                                Icon(FontAwesome.comment,size: 16,color: Colors.grey,),
                                Text("10",style: TextStyle(fontSize: 13),),

                              ],

                            ),
                            Text("Gönülü",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Color(0xff0A8814)),)



                          ],


                        ),
                          
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
