import 'package:flutter/material.dart';

class Model{
  String name;
  Widget addrSize;
  Widget addrFormat;
  Widget prefix;
  Widget number;
  Color boxcolor;
  //ham khoi tao
  Model({
    required this.name,
    required this.addrSize,
    required this.addrFormat,
    required this.prefix,
    required this.number,
    required this.boxcolor });
    
  static BuildContext? get context => null;
 static Widget _builRichText(String labletext, String text){
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$labletext',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)
          ),
          TextSpan(text: text,style: TextStyle(color: Colors.black))
        ]
      ));
  }
    
    // ham goi
 static List<Model> getModel(){
    List<Model> Models =[];
    Models.add(
      Model(
        name:'IPv4',
        addrSize:_builRichText('Address Size :\n','32-bit number'), 
        addrFormat: _builRichText('Address Format :\n', 'Dotted Decimal Notation:\n192.168.1.1'), 
        prefix:_builRichText('Prefit Notation:\n','255.255.255.0\n/24'), 
        number: _builRichText('Number of addresses:\n', '2**32=4,294,967,296'),
        boxcolor: Colors.green.shade400)
    );
     Models.add(
      Model(
        name:'IPv4',
        addrSize:_builRichText('Address Size :\n','32-bit number'), 
        addrFormat: _builRichText('Address Format :\n', 'Dotted Decimal Notation:\n192.168.1.1'), 
        prefix:_builRichText('Prefit Notation:\n','255.255.255.0\n/24'), 
        number: _builRichText('Number of addresses:\n', '2**32=4,294,967,296'),
        boxcolor: Colors.blue.shade400)
    );
   
   
    return Models;
  }
}