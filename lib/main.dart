import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _width;
  double height;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          centerTitle: true,
          title: Text("Health Need",textAlign: TextAlign.center,),
          backgroundColor: Colors.green[500],
          leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
          actions:[
            Padding(
              padding:EdgeInsets.only(right:10.0),
              child:Icon(Icons.notifications,color:Colors.white,),

            ),
          ],),


        body:Center(
          child:  MyHomePage(),

        ),
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  MyHomePageWidget createState() => MyHomePageWidget();
}

class MyHomePageWidget extends State{
  var image;
  String radiobutton='ONE';
  int id=1;
  bool  checkedvalue=false;




  @override
  Widget build(BuildContext){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        Stack(
          alignment: Alignment.center ,
          children:[ new Container(
              margin:EdgeInsets.only(bottom: 200.0),
              height:60.0,
              width:100.0,

              child:Text(
                'Register as',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontFamily:'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              )
          ),
            new Container(
              height:60.0,
              width:200.0,
              margin:EdgeInsets.only(left:220,top:300.0),
              child:Text(
                  'Aready have an account?',
                  style:TextStyle(
                    decoration: TextDecoration.underline,
                    color:Colors.black,
                  )
              ),
            ),

            Row
              (
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(

                  padding: EdgeInsets.only(bottom:600.0),

                  child:      Text("Get doctor appoinment instantly",

                    style: TextStyle(fontSize:20.0,color: Colors.grey[700],fontFamily: 'Roboto',fontWeight: FontWeight.w700,),),
                ),
                Container(
                  decoration:
                  BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color:Colors.orange),
                  child:Icon(Icons.notifications,size:4,color:Colors.grey,),
                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(left:70.0,),

              child:CheckboxListTile(

                value: checkedvalue,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('I accept all the terms and conditions',
                  style:TextStyle
                    (fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color:Colors.black,

                  ),),
                //value: monVal,
                onChanged: (val) {
                  setState(() {
                    checkedvalue=val;
                  });
                },
              ),
            ),

            Padding(

              padding: EdgeInsets.only(top: 540,),
              child:  Row(

                children:[
                  Padding(
                    padding: EdgeInsets.only(left:50,),
                    child:  CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("images/fl1.jpg"),
                      // backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:(70),),
                    child:   Text(
                        ' Call for help',
                        style:TextStyle(
                          color:Colors.grey[700],
                          fontSize: 16,
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:20,),
                    child:ClipOval(
                      child: Material(
                        color: Colors.black, // button color
                        child: InkWell(
                          // splashColor: Colors.red, // inkwell color
                          child: SizedBox(width: 56, height: 56, child: Icon(Icons.call,color:Colors.white,)),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                ],

              ),
            ),

            //mahi
            Padding(
              padding: EdgeInsets.only(bottom: 150,left:50,),
              child:Row(
                children:[  ButtonBar(

                  children:[ Row (
                    children:[
                      Radio(
                        value:1,
                        groupValue: id,

                        activeColor: Colors.grey[700],
                        onChanged: (val){
                          setState((){
                            radiobutton='ONE';
                            id=1;

                          });

                        },
                      ),
                      Text( 'Doctor',
                          style:TextStyle(
                            fontSize:25,
                            color:Colors.grey[700],
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                    Row( children:[
                      Radio(
                        value:2,
                        groupValue: id,
                        activeColor: Colors.grey[700],
                        onChanged: (val) {
                          setState(() {
                            radiobutton='ONE';
                            id=2;
                          });
                        },

                      ),
                      Text('Patient',
                        style: TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 25,
                          color:Colors.grey[700],
                        ),),
                    ],
                    ),
                  ],
                ),
                ],
              ) ,
            ),
            Padding(
              padding:EdgeInsets.only(bottom:450,left:120,),
              child:Row(
                children: [
                  Text(

                      'Click  ',
                      style:TextStyle(
                        color:Colors.teal[600],
                        fontSize: 25,
                        fontWeight:FontWeight.w200,

                      )

                  ),

                  Text(
                    'Health',
                    style:TextStyle(
                      color:Colors.teal[700],
                      fontSize: 25,
                      fontWeight:FontWeight.bold,
                      decoration: TextDecoration.underline,

                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:150,),
              child:Container (
                width:350,
                height: 50,
                child:RaisedButton(
                  onPressed: (){},
                  color: Colors.teal,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                  child: Text(
                    'GET STARTED',
                    style:TextStyle(
                      color:Colors.white,
                      fontSize:30,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),

      ],
    );





  }


}





