import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Specialist());
}

class Specialist extends StatefulWidget {
  const Specialist({Key? key}) : super(key: key);

  @override
  _SpecialistState createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            // margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xff00bfff),
            ),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 30, left: 18, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.arrow_back_ios,
                              color: Color(0xff00bfff)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert_sharp,
                                    color: Colors.white),
                              )),
                        ),
                      ],
                    )),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Choose your own",
                          style: TextStyle(fontSize: 23, color: Colors.white)),
                      Text("specialist",
                          style: TextStyle(fontSize: 23, color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text("Categories", style: TextStyle(fontSize:18, fontWeight: FontWeight.w100)),
                        ),
                        Text("See all"),
                      ],
                    ),
                  ),
                ),
                //SizedBox(height: 5, ),

                Container(
                  height: 90,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 16, right: 6),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffffffff)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Center(
                                child: Icon(Icons.book_online,
                                    size: 40, color: Color(0xff00bfff)),
                              ),
                            ),
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: Container(
                    color: Colors.white,
                  ),
                ),

                Container(
                  height: 600,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            //margin: EdgeInsets.only(right: 10),
                            height: 110,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffffffff)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                          color: Colors.grey,
                                          child: Image.asset(
                                            "assets/undraw_personal_information_re_vw8a-removebg-preview.png",
                                            width: 120,
                                            height: 120,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 18.0, bottom:5),
                                          child: Text("Dr.Adamson",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100,
                                              )),
                                        ),
                                        Padding(
                                           padding: const EdgeInsets.only(right:55,),
                                          child: Text("Therapist",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey[500],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left:30),
                                          child: Row(children: [
                                            Icon(Icons.star, color: Colors.yellow,),
                                            Text("4.9"), 
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(Icons.timelapse, color: Color(0xff00bfff)),
                                            ),
                                            Text("8AM-2PM"),
                                          ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
