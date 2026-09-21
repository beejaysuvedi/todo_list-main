
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();

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
              SizedBox(height: 90,),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: InkWell(
                 
                  
                  child: Icon(Icons.arrow_back_ios)),
              ),
              SizedBox(height:30 ,),
              Text("Create Account", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),),
          
              SizedBox(height: 20,),
          
              
              TextField(
          
                decoration: InputDecoration(
          
                  filled: true,
                  fillColor: Colors.grey.withValues(alpha: 0.15),
                  hintText: "FirstName",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
          
                  )
                ),
              ),
              SizedBox(height: 20,),
               
              TextField(
          
                decoration: InputDecoration(
          
                  filled: true,
                  fillColor: Colors.grey.withValues(alpha: 0.15),
                  hintText: "LastName",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
          
                  )
                ),
              ),
              SizedBox(height: 20,),
               
              TextField(
          
                decoration: InputDecoration(
          
                  filled: true,
                  fillColor: Colors.grey.withValues(alpha: 0.15),
                  hintText: "EmailAddress",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
          
                  )
                ),
              ),
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
              SizedBox(height: 50,),
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
              SizedBox(height: 20,),
                RichText(
                
                text:TextSpan(
                  text: "Forget Password?",
                  children: [
                    TextSpan(
                      text: "Reset", style: TextStyle(fontWeight: FontWeight.w600)
                    )
                  ]
                ) ),
          

             
             
              
          
              
          
            ],
          ),
        ),
      ),
      





    );
  }
}