import 'package:doglife/views/change_language.dart';
import 'package:doglife/views/chnage_password.dart';
import 'package:doglife/views/edit_profile.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
              color: Color(0xffF6F6F6),
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Hesap",
                style: TextStyle(color: Color(0xff3B3B3B), fontSize: 17),
              )),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            },
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Profili Düzenle",
                      style: TextStyle(color: Color(0xff3B3B3B), fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChangePassword()));
            },
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Parolayı Değiştir",
                      style: TextStyle(color: Color(0xff3B3B3B), fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChangeLanguage()));
            },
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Dil",
                      style: TextStyle(color: Color(0xff3B3B3B), fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                )),
          ),
          Container(
              color: Color(0xffF6F6F6),
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Diğer",
                style: TextStyle(color: Color(0xff3B3B3B), fontSize: 17),
              )),
          GestureDetector(
            onTap: () {},
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Gizlilik Politikası",
                      style: TextStyle(color: Color(0xff3B3B3B), fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Bizimle İletişime Geç",
                      style: TextStyle(color: Color(0xff3B3B3B), fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Uygulama Hakkında",
                      style: TextStyle(color: Color(0xff3B3B3B), fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Çıkış",
                      style: TextStyle(
                          color: Color(0xff3B3B3B),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
