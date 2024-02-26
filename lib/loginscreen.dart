import 'package:flutter/material.dart';
import 'package:showroom/navigationscreen.dart';
import 'package:showroom/signupscreen.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      )
  );
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
              title: Text('Login',
              style: TextStyle(fontSize: 28, color: Color(0xFF113D6D), fontWeight: FontWeight.w500),
              ),
            ),
        
            const SizedBox(height: 160,),
        
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
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
                  hintText: 'melpeters@gmail.com',
        
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const NavigationScreen()));
                  },
                  child: const Text('Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
        
            const SizedBox(height: 70,),
        
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 100, top: 20),
                  child: Text('Don`t have an account?',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupScreen()));
                    },
                    child: const Text('Signup Now',
                    style: TextStyle(color: Color(0xFF007AFF), fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
        
          ],
        ),
      )
    );
  }
}
