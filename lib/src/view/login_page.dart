import 'package:flutter/material.dart';
import 'package:leite_humano/src/view/mom_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Stack(
              children: [
                ColorFiltered(colorFilter: ColorFilter.mode(Color.fromARGB(255, 104, 234, 249), BlendMode.darken),
                child: Image.asset('assets/img/mamadeiras.png'),),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 500),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12),
                      child: Image.asset('assets/img/logo.png', width: 200,height: 200,fit: BoxFit.fitWidth,),
                    ),
                  ),
                )
              ],
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(100)),
                color: Colors.white
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: TextField(
                    
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          
                        ),
                      ),
                    ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: TextField(
                    
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          
                        ),
                      ),
                    ),),
                    SizedBox(
                      height: 50,
                    ),

                    TextButton(onPressed:(){
                       Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> MomPage()));}, child: Container(
                          width: 70,
                          height: 30,
                          color: Color.fromARGB(255, 104, 234, 249),
                          child: Text(
                            'Entrar',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ))
                ],
              )
                
                
              
              
            ),
          )
        ],
      ),
    );
  }
}