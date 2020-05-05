import 'package:doglife/views/forgot_password.dart';
import 'package:doglife/views/home.dart';
import 'package:doglife/views/home/news.dart';
import 'package:doglife/views/news_details.dart';
import 'package:doglife/views/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/dog_life_logo.png",
                height: 120,
              ),
              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 60,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Email"),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Email"),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Şifre"),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Şifre"),
                    ),
                  ],
                ),
              ),

              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Container(
                        padding: EdgeInsets.only(left: 24, top: 16),
                        child: Text("Şifremi unuttum")),
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),

              Container(
                height: 60,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color(0xffF58524),
                      const Color(0xffF92B7F),
                    ]),
                    borderRadius: BorderRadius.circular(3)),
                child: InkWell(

                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));


                  },
                                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 24,
                      ),
                      InkWell(
                        
                                            child: Text(
                          "Giriş",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 16,
                      )
                    ],
                  ),
                ),
              ),

              ///

              SizedBox(
                height: 20,
              ),

              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Google ile Giriş Yap",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/google_logo.png",
                      width: 30,
                    ),
                    SizedBox(
                      width: 16,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Zaten hesabın var mı?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff757575).withOpacity(0.5)),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (contex) => Register()));
                    },
                    child: Text(
                      "Kayıt Ol",
                      style: TextStyle(color: Color(0xffE25E31)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
