import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: Container(
          height: 700,
          width: MediaQuery
          .of(context)
          .size
          .width,
          decoration: BoxDecoration(
            image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            image: AssetImage(
              "assets/image/bgfilm.png"
          )
        )
        ),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/logocinemax.png',
                    width: 250,
                    height: 125,
                  ),
                  SizedBox(height: 5,),
    
                  //Hello again
                Text(
                    'Hello Again!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: 10,),
                //Welcome Back
                  Text(
                    'Welcome back, you\'ve been missed!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 50,),
                //Email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                ),),
                  SizedBox(height: 10,),
    
    
                  //Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),),
    
                  SizedBox(height: 10,),
    
    
                  //Signin button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(
                        child: Text('Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
    
    
                //not a member?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member?',style: TextStyle(
                        color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                      Text(' Register Now',style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
              ],),
            ),
          ),
        )
      ),
    );
  }
}
