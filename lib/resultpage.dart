import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  Result(
  {
  required this.bmiresult,
  required this.resulttext,

  });
 String bmiresult;
  String resulttext;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Your Result"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        width: 500,
        child: Card(
     child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text(resulttext.toUpperCase(),
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.green,
              ),),
             SizedBox(height:40.0),
              Text(bmiresult,
              style:
                  TextStyle(
                    fontSize: 50.0,

                  )
              ),

            ],
          )
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.fromLTRB(50.0,0.0,20.0,20.0),
        width: 500,
        child: FloatingActionButton.extended(

          label: Text("RE-Calculate"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
