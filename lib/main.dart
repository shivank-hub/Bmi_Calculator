import 'package:flutter/material.dart';
import 'package:bmi_calc/calculation.dart';
import 'package:bmi_calc/resultpage.dart';


void main()=> runApp(MaterialApp(
  home: BMI(),
));
enum Gender {
  male,
  female,
}
class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
     Gender? selected_gender;
  int height = 180;
  int weight=60;
  int age=20;
  // bool _hasBeenPressed = false;
  // bool _hasBeenPressed1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body:
        Column(
          children: [
             Row(
                children: [

                  Expanded(
                    child: InkWell(
                      onTap: ()
                      {
                        setState(() {
                          selected_gender=Gender.male;

                        });
                      },

                     // highlightColor: Colors.black,
                      child: Container(

                        height: 150,
            width: 200,
                        child:  Card(

                         // color: _hasBeenPressed ? Colors.cyanAccent : Colors.indigoAccent,

                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                               children: [
                                 Icon(Icons.male,size: 80.0,color:Colors.white),
                                   Align(
                                   alignment: Alignment.center,
                                   child: Text("MALE",
                                   style:TextStyle(
                                     fontSize: 20.0,
                                   )),
                                 ),
                               ],
                             )

                          ),

                          color: selected_gender==Gender.male ? Colors.cyanAccent : Colors.indigoAccent,
                        ),
                      ),


                    ),

                  ),
              Expanded(
                child: InkWell(
                  onTap: ()
                  {
                    setState(() {
                      selected_gender=Gender.female;


                    });
                  },
                //  highlightColor: Colors.black,

                  //focusColor: Colors.black,
                  child: Container(

                    height: 150,
                    width: 210,
                    child:  Card(
                   //   color: _hasBeenPressed1 ? Colors.cyanAccent : Colors.indigoAccent,
                     // color: Colors.indigoAccent,



                      child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Icon(Icons.female,size: 80.0,color:Colors.white),
                              Align(
                                alignment: Alignment.center,
                                child: Text("FEMALE",
                                    style:TextStyle(
                                      fontSize: 20.0,
                                    )),
                              ),
                            ],
                          )

                      ),

                        color: selected_gender==Gender.female ? Colors.cyanAccent : Colors.indigoAccent
                    ),

                  ),

                ),

              ),


                ],
              ),
            InkWell(
              child: Container(

                height: 180,
                width: 400,
                child:  Card(

                  color: Colors.indigoAccent,

                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [

                          Align(
                            alignment: Alignment.center,
                            child: Text("HEIGHT",
                                style:TextStyle(
                                  fontSize: 25.0,
                                )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Text(
                               height.toString(),
                               style: TextStyle(
                                 fontSize: 40.0,
                               ),
                             ),
                              Text(
                                "cm",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          ),
                          Slider(value: height.toDouble(),
                              min: 120,
                              max: 220,
                              activeColor: Colors.greenAccent,
                              onChanged: (double newvalue)
                          {
                            setState((){
                               height=newvalue.round();
                            });
                          }
                          )



                        ],



                      ),


                  ),


                ),
              ),
            Row(
                children: [

                  Expanded(
                    child: InkWell(
                      child: Container(
                        height: 200, width: 200, child:  Card(
                        color: Colors.indigoAccent,
                        child: Container(
                            child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text("WEIGHT",
                                  style:TextStyle(
                                    fontSize: 20.0,
                                  )),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Container(

                                  child: FloatingActionButton(
                                      child: Icon(Icons.exposure_minus_1),
                                      onPressed: (){
                                        setState(()
                                        {
                                          weight--;
                                        });
                                      }),
                                ),
                                SizedBox(width: 45.0,),
                                Container(

                                  child: FloatingActionButton(
                                      child: Icon(Icons.plus_one),
                                      onPressed: (){
                                        setState(()
                                        {
                                          weight++;
                                        });
                                      }),
                                ),
                                // SizedBox(
                                //   width: 10.0,
                                // ),

                              ],
                            )
                          ],

                        )

                        ),


                      ),
                      ),
                     ),),
                  Expanded(
                    child: InkWell(
                      child: Container(
                        height: 200, width: 210, child:  Card(
                        color: Colors.indigoAccent,
                        child: Container(child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(alignment: Alignment.center,
                              child: Text("AGE", style:TextStyle(fontSize: 20.0,)),),
                          Text(age.toString(),
                            style: TextStyle(fontSize: 30.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                              child: Icon(Icons.exposure_minus_1),
                                  onPressed: (){
                                  setState(()
                                      {
                                        age--;
                                      });
                              }),
                              SizedBox(width: 20.0),
                              FloatingActionButton(onPressed: (){
                                     setState(()
                                         {
                                           age++;
                                         });
                              },
                              child:Icon(Icons.plus_one),
                              )


                            ],
                          )
                          ],
                        )
                        ),

                      ),
                      ),
                      ),),

                ],
            ),
            SizedBox(
              width: 400,
              child: FloatingActionButton.extended(
                label: Text("Calculate"),
                  backgroundColor: Colors.red,
                  onPressed: (){
               calculation calc=calculation(height:height,weight
               :weight);
              Navigator.push(context,  MaterialPageRoute(builder: (context) => Result(
                bmiresult: calc.calculatebmi(),
                resulttext:calc.getResult(),
              ) ));

              }),
            )








          ],
        ),
    );
  }
}





