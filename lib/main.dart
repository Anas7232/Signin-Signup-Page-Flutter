import 'package:flutter/material.dart';
import 'package:showroom/loginscreen.dart';
import 'package:showroom/signupscreen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width/1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
        },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12)
                    ),
                    color: Color(0xFF113D6D)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12, left: 140, right: 140),
                    child: Text('Login',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignupScreen()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(12)
                      ),
                      color: Color(0xFF113D6D)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 132, right: 132),
                    child: Text('Signup',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 80,)

            ],
          ),
        ),
      );
  }
}

