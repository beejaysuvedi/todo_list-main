

import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
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
                
                child: RichText(
                  
                  text:TextSpan(
                    text: "Forget Password?",
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
      





