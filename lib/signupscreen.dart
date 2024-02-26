import 'package:flutter/material.dart';
import 'package:showroom/loginscreen.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignupScreen(),
      )
  );
}

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const ListTile(
                leading: Icon(Icons.arrow_back, size: 22,),
                title: Text('Signup',
                  style: TextStyle(fontSize: 28, color: Color(0xFF113D6D), fontWeight: FontWeight.w500),
                ),
              ),

              const SizedBox(height: 20,),

              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 10),
                    child: Text('Name',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 6),
                child: TextField(
                  style: const TextStyle(color: Color(0xFFA6A6A6)),
                  obscureText: false,
                  // obscuringCharacter: "*",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelStyle: const TextStyle(color: Color(0xFFA6A6A6),fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // labelText: 'Enter Video Title',
                    hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 18, fontWeight: FontWeight.w400),
                    hintText: 'Mellisa Paters',

                    // labelText: 'Title'
                  ),
                ),
              ),

              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30,top: 20),
                    child: Text('Email',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 6),
                child: TextField(
                  style: const TextStyle(color: Color(0xFFA6A6A6)),
                  obscureText: false,
                  // obscuringCharacter: "*",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelStyle: const TextStyle(color: Color(0xFFA6A6A6),fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // labelText: 'Enter Video Title',
                    hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 18, fontWeight: FontWeight.w400),
                    hintText: 'melpaters@gmail.com',

                    // labelText: 'Title'
                  ),
                ),
              ),

              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30,top: 20),
                    child: Text('Date Of Birth',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 6),
                child: TextField(
                  style: const TextStyle(color: Color(0xFFA6A6A6)),
                  obscureText: false,
                  // obscuringCharacter: "*",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelStyle: const TextStyle(color: Color(0xFFA6A6A6),fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // labelText: 'Enter Video Title',
                    hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 18, fontWeight: FontWeight.w400),
                    hintText: '23/05/1995',

                    // labelText: 'Title'
                  ),
                ),
              ),

              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30,top: 20),
                    child: Text('Mobile Number',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 6),
                child: TextField(
                  style: const TextStyle(color: Color(0xFFA6A6A6)),
                  obscureText: false,
                  // obscuringCharacter: "*",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelStyle: const TextStyle(color: Color(0xFFA6A6A6),fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // labelText: 'Enter Video Title',
                    hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 18, fontWeight: FontWeight.w400),
                    hintText: '+19173338887',

                    // labelText: 'Title'
                  ),
                ),
              ),



              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 20),
                    child: Text('Password',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 6),
                child: TextField(
                  style: const TextStyle(color: Color(0xFFA6A6A6)),
                  obscureText: passwordVisible,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      color: const Color(0xFF90A3BF),
                      icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(
                              () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                    labelStyle: const TextStyle(color: Color(0xFFA6A6A6),fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // labelText: 'Enter Video Title',
                    hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 18, fontWeight: FontWeight.w400),
                    hintText: '***********',

                    // labelText: 'Title'
                  ),
                ),
              ),

              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 20),
                    child: Text('Conform Password',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 6),
                child: TextField(
                  style: const TextStyle(color: Color(0xFFA6A6A6)),
                  obscureText: passwordVisible,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      color: const Color(0xFF90A3BF),
                      icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(
                              () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                    labelStyle: const TextStyle(color: Color(0xFFA6A6A6),fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // labelText: 'Enter Video Title',
                    hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 18, fontWeight: FontWeight.w400),
                    hintText: '***********',

                    // labelText: 'Title'
                  ),
                ),
              ),

              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 10),
                    child: Text('Forgot Password',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF007AFF)),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: MediaQuery.of(context).size.height/13,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)
                      ),
                      color: Color(0xFF113D6D)
                  ),
                  child: TextButton(
                    onPressed: (){

                    },
                    child: const Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 100, top: 10),
                      child: Text('Allready have an account?',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10,),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                        },
                        child: const Text('Login Now',
                          style: TextStyle(color: Color(0xFF007AFF), fontSize: 12),
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }
}
