import 'package:flutter/material.dart'; 
 
final List<String> mass = <String>[ 
  'акс', 
  'энигма', 
  'инвокер', 
  'лина', 
  'некрофус ', 
  'сларк', 
  'снайпер', 
  'спектра', 
  'тинкер', 
  'ячс' 
]; 
final List<String> mass1 = <String>[ 
  'I', 
  'II', 
  'III', 
  'IV', 
  'V', 
  'VI', 
  'VII', 
  'VIII', 
  'IX', 
  'X' 
]; 
final List<String> mass2 = <String>['lib/assets/images/axe.png', 'lib/assets/images/enigma.png','lib/assets/images/invoker.png', 'lib/assets/images/lina.png', 'lib/assets/images/necrophos.png', 'lib/assets/images/slark.png', 'lib/assets/images/sniper.png', 'lib/assets/images/spectra.png', 'lib/assets/images/tinker.png', '']; 
void main() { 
  runApp(const MaterialApp( 
    home: ListViewLesson(), 
    debugShowCheckedModeBanner: false, 
  )); 
} 
 
class ListViewLesson extends StatelessWidget { 
  const ListViewLesson({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Dota 2'), 
        centerTitle: true, 
        backgroundColor: Colors.red,
      ), 
      body: ListView.builder( 
          padding: EdgeInsets.only(top: 8, left: 100, right: 100), 
          itemCount: mass.length, 
          itemBuilder: (BuildContext context, int index) { 
            return Container( 
              margin: EdgeInsets.all(8), 
              height: 150, 
              decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(16), color: Colors.red), 
              child: Row(children: [ 
                Expanded( 
                    child: Padding( 
                  padding: EdgeInsets.only(left: 290, bottom: 100), 
                  child: Text( 
                    '${mass[index]}', 
                    style: TextStyle(fontSize: 20, color: Colors.black), 
                  ), 
                )), 
                Image.asset('${mass2[index]}'), 
                Container( 
                    child: Padding( 
                  padding: EdgeInsets.only( 
                    top: 100, 
                    left: 180, 
                    right: 20, 
                  ), 
                  child: Text( 
                    '${mass1[index]}', 
                    style: TextStyle(color: Colors.black), 
                  ), 
                )) 
              ]), 
            ); 
          }), 
    ); 
  } 
}