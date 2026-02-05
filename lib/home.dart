import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  State<MyHome> createState() => MyHomeState();
}
class MyHomeState extends State<MyHome> {
  final GlobalKey<FormState>_formKey=GlobalKey<FormState>();
  void _submitform(){
    if(_formKey.currentState!.validate()){}
  }
  String? _email(value){
    if(value!.isEmpty){
      return 'Please Enter Mail';
    }
  }
  String? _pass(value){
    if(value!.isEmpty){
      return "Enter Password";
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Center(child: Text('Login Page')),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: TextFormField(
                  decoration: InputDecoration(
                      label: Text('Enter Email'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14))),
               validator: _email, ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: TextFormField(
                  
                  obscureText: true,
                  decoration: InputDecoration(
                    
                      label: Text('Password'),
                      border: OutlineInputBorder(
                        
                          borderRadius: BorderRadius.circular(14))),
                validator: _pass
                ,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                  child: ElevatedButton(
                onPressed: _submitform,
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent),
              ))
            ],
          ),
        ));
  }
}
