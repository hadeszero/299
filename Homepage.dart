import 'package:flutter/material.dart';
import 'package:flutter_application_1/ipv4%20vs%20ipv6.dart';

class Homepage extends StatelessWidget{
  List <Model> Models =[];

  void _getinfor(){
    Models =Model.getModel();
  }
  @override
  Widget build(BuildContext context) {
    _getinfor();
   return Scaffold(
    appBar:appbar() ,
    backgroundColor: Colors.white,
    body: Column(
      children: [
        SizedBox(height: 30,),
        Container(
          margin: EdgeInsets.only(left: 48),
          height:400,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 300,
                color: Models[index].boxcolor.withOpacity(0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children: [
                    
                    SizedBox(height: 5,),
                    Text(Models[index].name,style: TextStyle(fontSize: 45,color: Colors.black),),
                    SizedBox(height:30),
                    Models[index].addrSize,
                    SizedBox(height:20),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Models[index].addrFormat,
                    ),
                    SizedBox(height:20),
                    Models[index].prefix,
                    SizedBox(height:20),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Models[index].number,
                    ),

                  ]),
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 5,),
            itemCount: 2),
        )
      ],
    ),
   );

}

  AppBar appbar() {
    return AppBar(    
    toolbarHeight:80 ,
    title: const Padding(
      padding: EdgeInsets.only(left: 20,top: 20),
      child: Text('IPv4 and IPv6',style: TextStyle(fontSize: 30,color: Colors.black),),
    ),
    elevation: 1.0,
    backgroundColor: Colors.white,
  );
  }}    