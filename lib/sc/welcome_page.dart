import 'package:ecommerce_store/sc/log_in.dart';
import 'package:ecommerce_store/sc/sign_in.dart';
import 'package:flutter/material.dart';

class Welcome_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Yseen Store",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assent/welcome.png"),
                  ),
                ),
              ),
              Column(
                children:<Widget>[
              MaterialButton(
                minWidth: double.infinity,
                  height: 60,
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login_page()));
                  },
                shape: RoundedRectangleBorder(

                  side: BorderSide(
                    color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(50)

                ),
                child: Text("Login"
                ,style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),

              ),
                  SizedBox(height: 20,),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signup_page()));
                    },
                    color: Color(0xff009dff),
                    shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Sign up"
                      ,style: TextStyle(
                          fontWeight: FontWeight.w600
                      ),
                    ),

                  ),
                  SizedBox(height: 60,),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
