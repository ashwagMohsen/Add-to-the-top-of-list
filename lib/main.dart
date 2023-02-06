import 'package:flutter/material.dart';


void main(){
  runApp(
 MaterialApp(
      home: MyApp2()
  )
  );
}
 
class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State <MyApp2> createState() =>  _HomePageState();
}

//=============================================
class _HomePageState extends State<MyApp2> {
  List<String>item=[];
  String temp="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list"),
        centerTitle: true,
      ),
      body:Column(children: [
        ListView.builder(itemCount:item.length ,

          reverse: true,
          shrinkWrap: true,
          itemBuilder: (context, index){
            return Container(child:Text(item[index].toString(),)
              ,);
          } ,


        ),
        TextField(onChanged: (str){
          temp=str;
        },
          maxLength: 30,style: TextStyle(fontSize: 30),),
        Container(child:MaterialButton(child:Text("add",style:TextStyle(fontSize: 30,color: Colors.black),),
          onPressed:()
          {setState(() {
          item.add(temp);
        });},
          color: Colors.black45,),
        ),

       ],
      ),



    );
  }
}






class  MyApp2State extends State <MyApp2> {
 List<Widget>Texts=[Text("Hi guys!!!",style: TextStyle(color: Colors.white,fontSize: 30),)];
  TextEditingController y=TextEditingController();
  dynamic color1=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        
        height: double.infinity,
  width: double.infinity,
  decoration: const BoxDecoration(
    image: DecorationImage(
        image: AssetImage("images/photo-1516900557549-41557d405adf.jpeg"),
        fit: BoxFit.cover),
  ),
        child: Padding(padding: EdgeInsets.fromLTRB(20, 100, 20, 20),child:  new Column(
          children:<Widget> [
           
            new TextField(
          decoration: InputDecoration(filled: true,fillColor: Color.fromARGB(150, 177, 22, 11),hintText: "Please chat me here...",hintStyle:TextStyle(color: Color.fromARGB(255, 157, 136, 136),fontSize: 20),),
            controller: y,keyboardType: TextInputType.text,style:TextStyle(color: Colors.white,fontSize: 30),
),
            new GestureDetector( 
                
               // decoration: InputDecoration(border:OutlineInputBorder(borderRadius: 8)),
                child:Container(
      
                color:Color.fromARGB(255, 177, 23, 11),
                height: 70,
                width: 100,
               child:Center(child: Text("OK!",style:TextStyle(color: Colors.white,fontSize: 20),)),
                
                ),
                onTap: (){
                  setState((){
                  Texts=Texts.reversed.toList();
                 Texts.add(Text(y.text,style: TextStyle(color: Colors.white,fontSize: 30),));
                Texts= Texts.reversed.toList();
                
                  });
                },
                ),
              new Expanded(child:new ListView.builder(
               //itemCount: (Texts.length-1)*-1,
               
               itemCount: Texts.length,
               itemBuilder: (BuildContext context,int index){
             
                return Texts[index];
               } ,
               
                ),),

          ],
       // children:[
        //   Container(
       
               
                ) ,),
                ),
         
                //),
   //------------------------------------------------------
              
       // ],
    
    );
    
    }
  }
   //------------------------------------------------------
   //------------------------------------------------------
