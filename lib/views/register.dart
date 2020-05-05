import 'package:doglife/views/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              Container(
                height: 180,
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 150,
                        width: 150,
                        padding: EdgeInsets.all(35),
                        decoration: BoxDecoration(
                            color: Color(0xff000000).withOpacity(0.07),
                            borderRadius: BorderRadius.circular(100)),
                        child: Image.asset(
                          "assets/dog_face_logo.png",
                          width: 100,
                          height: 100,
                        )),
                    Container(
                      height: 180,
                      width: 150,
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "assets/add_btn.png",
                        width: 50,
                      ),
                    )
                  ],
                ),
              ),

              ///
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("İsim Soyisim"),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "İsim Soyisim"),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text("Email"),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Email"),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text("Şifre"),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Şifre"),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text("Parolanızı tekrar giriniz"),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Parolanızı tekrar giriniz"),
                    ),
                  ],
                ),
              ),

              ///

              SizedBox(
                height: 60,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color(0xffF58524),
                      const Color(0xffF92B7F),
                    ]),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Kayıt Ol",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    
                    
                    SizedBox(
                      width: 16,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Zaten hesabın var mı? ",
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
                          MaterialPageRoute(builder: (contex) => Login()));
                    },
                    child: Text(
                      " Giriş",
                      style: TextStyle(fontSize: 16,color: Color(0xffE25E31)),
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
