
import 'package:ecommerceappflutter/common/validate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget{
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool obserText =true;
class _SignUpState extends State<SignUp>{
  void validation(){
    final FormState? _form = _formKey.currentState;
    if(_form!.validate()){
      print("Yes");
    }
    else {
      print("No");
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Form(
          key:_formKey,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      Text("Register",style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 400 ,
                  width:double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        validator: (value){
                          if(value!.length<6){
                            return "Username is too short";
                          }
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Username",
                          hintStyle: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                      TextFormField(
                        validator: (value){
                          RegExp regExp = new RegExp(Validate.emailValidate);
                          if(value == ""){
                            return "Please fill email";
                          }else if(!regExp.hasMatch(value!)){
                            return "Email is invalid";
                          }
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email",
                          hintStyle: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                      TextFormField(
                        obscureText: obserText,
                        validator: (value){
                          if(value!.length<8){
                            return "Password is too short";
                          }
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: "Password",
                          hintStyle: const TextStyle(
                              color: Colors.black
                          ),
                          suffixIcon: GestureDetector(
                            onTap: (){
                              setState((){
                                obserText = !obserText;
                              });
                            },
                            child: Icon(
                              obserText == true? Icons.visibility : Icons.visibility_off,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        validator: (value){
                          if(value!.length<9){
                            return "Phone number must be more 9 number";
                          }
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Phone number",
                          hintStyle: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                      Container(
                          height: 45,
                          width: double.infinity,
                          child: RaisedButton(
                              child: const Text("Register"),color: Colors.blueGrey[400],onPressed: (){
                                validation();
                          })
                      ),
                      Row(
                        children: [
                          const Text("I have Already An Account!"),
                          GestureDetector(child:Text("Login",style: TextStyle(color: Colors.cyan),))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

        ),
      )

      ,
    );
  }
}