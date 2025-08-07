import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/homescreen/home_screen.dart';
import 'package:flutter_application_1/view/signupscreen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscurePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:
          SingleChildScrollView(
            padding: const
            EdgeInsets.symmetric(
              horizontal: 50
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image logo
                  ClipRRect(borderRadius: 
                  BorderRadius.circular(100),
                
                  child: Image.asset('assets/logo.jpg', 
                  height: 100, width: 100,   fit: BoxFit.cover),
                  ),
                  // welcome Text 
                  const Text(' welcome back !',
                   style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text('Sign In to continue', style: TextStyle(color: Colors.blue),
                  ),
                  const SizedBox(height: 60),
                  // Email Text Field 
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email', hintText: 'Enter Your Email',
                      prefix: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Password Text Field 
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password', hintText: 'Enter Your password', 
                      prefix: Icon(Icons.lock),
                      suffixIcon: IconButton(icon: Icon(obscurePassword ? Icons.visibility_off: Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          obscurePassword = ! obscurePassword;
                     }
                    );
                   },
                ),
                  border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
              ),
            ),
           ),
                  const SizedBox(height: 30),
                  // Login button 
                  SizedBox( width: 
                  double.infinity, height: 40,
                  child: ElevatedButton (
                    style: ElevatedButton.styleFrom(
                    shape:  RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20),

                    ),
                    backgroundColor: Colors.lightBlue,),
                     onPressed: (){
                      // here we will handle login functionality
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()),
                      );
                     },
                      child: const Text('Log In' ,  style:  TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black,
                  ),
                 ),
                ),
              ),
                  const SizedBox(height: 16 ,),
                  // now i have to create a link for Sign up 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Dont have an acount?"),
                      // GestureDetector(
                      //   onTap: (){
                      //     //Navigation to Sign Up Screen
                      //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignUpScreen()
                      //     ),
                      //     );
                      //   },
                      // child: const Text('Sign Up ',
                      //  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600,),
                      //  ),
                      // ),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignUpScreen()
                         ),
                       );
                      }, child:const Text('Sign Up ',
                       style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600,),
                       ),
                        ),
                    ],
                  )
                ],
              ),
          ),
        )
      ),
    );
  }
}