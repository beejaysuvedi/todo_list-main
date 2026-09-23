

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/provider/authentication_provider.dart';
import 'package:todo_list/screens/signup_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authenticationProvider = Provider.of<AuthenticationProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              SizedBox(height:120 ,),
              Text("Sign In", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),),
          
              SizedBox(height: 20,),
              TextField(
                controller: _emailController,
                
          
                decoration: InputDecoration(
          
                  filled: true,
                  fillColor: Colors.grey.withValues(alpha: 0.15),
                  hintText: "userName",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
          
                  )
                ),
              ),
              SizedBox(height: 20,),
          
              
              TextField(
                controller: _passwordController,
          
                decoration: InputDecoration(

          
                  filled: true,
                  fillColor: Colors.grey.withValues(alpha: 0.15),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
          
                  )
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                 onTap: () async {
                  
                  final email = _emailController.text;
                  final password = _passwordController.text;

                  if (!email.endsWith("@gmail.com")) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Invalid email"),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }
                  final result = await authenticationProvider.signIn(
                    email,
                    password,
                    
                  );
                  if (result) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Account Created Successfully"),
                        backgroundColor: Colors.green,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Failed to Create account"),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                child: Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color(0xff8E6CEF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Continue", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),)),
                        
                          
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CreateAccountScreen()));
                },
                
                child: RichText(
                  
                  text:TextSpan(
                    text: "Signup",
                    children: [
                      TextSpan(
                        text: "Reset", style: TextStyle(fontWeight: FontWeight.w600)
                      )
                    ]
                  ) ),
              ),
          
                
              
          
              
          
            ],
          ),
        ),
      ),
    );
  }
}
      





