import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:santosh/specialist.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                  margin: EdgeInsets.only(top: 3, left: 16, right: 16),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 59,
                        width: 59,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                              'assets/profile (2).png',
                            ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Beverly Chang",
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_vert_sharp),
                            )),
                      ),
                    ],
                  )),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.black12)),
                      height: 58,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            prefixIcon:
                                Icon(Icons.search, color: Color(0xff00bfff)),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: Colors.black38,
                                fontFamily: 'Rubik',
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    SizedBox(height: 25),
                    Stack(clipBehavior: Clip.none, children: [
                      Container(
                          height: 155,
                          decoration: BoxDecoration(
                            color: Color(0xff00bfff),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Help Yourself\n",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    Text(
                                      "You can always take",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white70),
                                    ),
                                    Text(
                                      "care of your health and",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white70),
                                    ),
                                    Text(
                                      "take a test for COVID-19",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white70),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  child: Image.asset(
                                      "assets/images-removebg-preview.png")),
                            ],
                          )),
                      Positioned(
                        top: -17,
                        right: 0,
                        left: 300,
                        child: Container(
                          height: 40,
                          width: 40,
                          //color: Colors.black,
                          decoration: BoxDecoration(
                            color: Colors.orange[700],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.cancel_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 16),
                child: Text(
                  "What do you need?",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Color(0xffb7e2fc),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_call,
                            size: 40,
                            color: Color(0xff00bfff),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Consulation"),
                          )
                        ]),
                  ),
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Color(0xffb7e2fc),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.bus_alert,
                            size: 40,
                            color: Color(0xff00bfff),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Ambulance"),
                          )
                        ]),
                  ),
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Color(0xffb7e2fc),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 40,
                            color: Color(0xff00bfff),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Nurse"),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Color(0xffb7e2fc),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.architecture,
                            size: 40,
                            color: Color(0xff00bfff),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Diagnostic"),
                          )
                        ]),
                  ),
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Color(0xffb7e2fc),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_downward_outlined,
                            size: 40,
                            color: Color(0xff00bfff),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Injections"),
                          )
                        ]),
                  ),
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Color(0xffb7e2fc),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.tv,
                            size: 40,
                            color: Color(0xff00bfff),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Check up"),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff00bfff),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Quick Appointment \n",
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Text(
                              "You can make an appointment",
                              style: TextStyle(fontSize: 15, color: Colors.white70),
                            ),
                            Text(
                              "at any time with any available doctor",
                              style: TextStyle(fontSize: 15, color: Colors.white70),
                            ),
                            
                          ],
                        ),
                      ),
                      Container(
                        
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Specialist()));
                            },
                            icon: Icon(Icons.arrow_right_alt),
                             iconSize:40, 
                             color:Colors.white),)
                        ),
                    
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
