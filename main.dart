import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
                leading: const BackButton(),
                backgroundColor: Colors.deepPurpleAccent,
                title: const Center(child: Text (" shopping app")),
                actions: [
                  /*ElevatedButton(onPressed:(){
                    print("button presssed");
                  }, child: const Icon(Icons.more_vert,color: Colors.white,),
                      style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurpleAccent))
                  )*/
                  IconButton(onPressed: (){
                    if (kDebugMode) {
                      print("pressed");
                    }
                  }, icon: const Icon(Icons.more_vert))
                ],
                bottom:  const TabBar(
                  tabs: [
                    Tab(icon:Icon(Icons.login),text: "sign in",),
                    Tab(icon:Icon(Icons.app_registration),text: "register",)
                  ],
                )
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(

                        width:270,
                        height:270,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHfJWZKg-9e7Wy52XA5-ImDyX3_KxO5IgyoQ&usqp=CAU")
                    ),
                    Column(
                      children:[
                        const SizedBox(height: 20),
                    TextField(
                      style: const TextStyle(color: Colors.black87),
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70),

                        ),
                        hintText: "please enter your mail",
                        labelText:"email",
                        prefixIcon: const Icon(Icons.email),
                        labelStyle:const TextStyle( color: Colors.deepPurpleAccent),
                        prefixIconColor: Colors.deepPurpleAccent,


                      ),

                    ),
                    const SizedBox(height:20),

                    TextField(
                      style: const TextStyle(color: Colors.black87),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "please enter your password",
                        labelText:"password",
                        prefixIcon: const Icon(Icons.key),
                        labelStyle:const TextStyle( color: Colors.deepPurpleAccent),
                        prefixIconColor: Colors.deepPurpleAccent,

                      ),

                    ),
           ] ),
                    const SizedBox(height: 50,),
                    ElevatedButton( style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(horizontal: 32,vertical:12)
                    ),
                        onPressed:(){
                          if (kDebugMode) {
                            print("pressed");
                          }
                        }, child: const Text("sign in")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(
                          child: Text("don't have an account?",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        TextButton(onPressed: (){
                          if (kDebugMode) {
                            print("pressed");
                          }

                        }, child: const Text("sign up",
                            style:TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            )

                        ) ,
                        )
                      ],
                    ) ,
                  ],
                ),
              ),
            ),

          ),
        )
    );
  }
}

