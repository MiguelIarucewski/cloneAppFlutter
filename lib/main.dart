

import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }

  }
  class Home extends StatefulWidget{
  const Home({super.key});

      
  @override
  State createState() => HomeState();

  }


  class HomeState extends State{

    int contador = 0;
    
    void click(){
      setState(() {
        contador++;
      });
    }
   
   @override
    build(context) {
       return Scaffold(
        appBar: AppBar(title: const Text("App contador")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("o contador foi atualizado para $contador",
                style: const TextStyle(
                  color: Colors.blue,
                 fontSize: 58,

                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: click,
          child: const Icon(Icons.add),
        ),
       );
    }

  }

