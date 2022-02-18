import 'package:doctor_app/doctordetails.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return initScreen();
  }

  Widget initScreen() {

    return Scaffold(
      backgroundColor: Color(
          0xff053F5E),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(
            0xff053F5E),
        leading: Icon(
          Icons.menu, color: Colors.white,),
        actions: [

          GestureDetector(
            child: Container(
              child: Icon(
                Icons.notifications_outlined, color: Colors.white,),
              margin: EdgeInsets.only(
                  right: 5),

            ),
          ),
          GestureDetector(
            child: ClipRRect(
//              borderRadius: BorderRadius.only(
//                topRight: Radius.circular(20), topLeft: Radius.circular(10),
//             ),

              child: Container(
                  margin: EdgeInsets.only(
                      right: 15),
                  width: 35,
                  height: 35,

                  child: Image.asset(
                      "assets/images/person2.jpg")),
            ),
          ),
        ],


      ),
      body: Container(
        width: double.infinity,

        decoration: BoxDecoration(
          color: Colors.grey[100],

          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(
                30), topLeft: Radius.circular(
              30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(
                height: 20,),
              Text(
                'Hi , Olivia', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600]),),
              SizedBox(
                height: 10,),
              Text(
                'Welcome Back', style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),),
              SizedBox(
                height: 15,),
              Container(

                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      6),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                          0.144),
                      blurRadius: 15,
                      offset: Offset(
                          0, 15),
                      spreadRadius: 0,

                    ),
                  ],

                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(
                              10, 2, 15, 0),
                          child: const TextField(
                            maxLength: 1,
                            autofocus: false,
                            cursorColor: Colors.indigo,
                            style: TextStyle(
                                color: Colors.white, fontSize: 25),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search ...',
                            ),
                          ),
                        )
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 65,
                        height: 65,

                        decoration: BoxDecoration(
                          color: Color(
                              0xff107163),
                          borderRadius: BorderRadius.circular(
                              5),

                        ),
                        child: Icon(
                          Icons.search, color: Colors.white, size: 30,),
                        //  child:Icon(Icons.search),

                      ),
                    ),
                  ],
                ),


              ),
              SizedBox(
                height: 20,),
              Row(
                children: [
                  Text(
                    "Category", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                  SizedBox(
                    width: 235,),
                  Text(
                    "See all", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(
                          0.5)),),
                ],
              ),
              SizedBox(
                height: 10,),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Category(
                        "assets/images/tooth.png", "Dental", "26 Doctors"),
                    Category(
                        "assets/images/heart.png", "Heart", "43 Doctors"),
                    Category(
                        "assets/images/brain.png", "Brain", "12 Doctors"),
                    Category(
                        "assets/images/bone.png", "Bone", "35 Doctors"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,),
              Row(
                children: [
                  Text(
                    "Top rate", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                  SizedBox(
                    width: 235,),
                  Text(
                    "See all", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(
                          0.5)),),
                ],
              ),
              SizedBox(
                height: 10,),
              Container(
                height: 165,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    topratedDoctors(
                        "assets/images/doctor1.jpg", "Dr.Fred Mask",
                        "Heart Surgery", "4,6", "5.3"),
                    topratedDoctors(
                        "assets/images/doctor2.jpg", "Dr.Fred Mask",
                        "Bones Surgery", "4,6", "5.3"),
                    topratedDoctors(
                        "assets/images/doctor3.jpg", "Dr.Fred Mask",
                        "Dentist Surgery", "4,6", "5.3"),
                    topratedDoctors(
                        "assets/images/doctor4.jpg", "Dr.Fred Mask",
                        "Brain Surgery", "4,6", "5.3"),
                    topratedDoctors(
                        "assets/images/doctor5.jpg", "Dr.Fred Mask",
                        "Heart Surgery", "4,6", "5.3"),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),


    );
  }

  Widget Category(String images, String specialization, String DoctorNum) {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.only(
          right: 10),
//    color:Color(0xff107163) ,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            10),
        color: Color(
            0xff107163),


      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Image.asset(
                  images)),
          SizedBox(
            height: 10,),
          Container(
              child: Text(
                specialization, style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),)),
          SizedBox(
            height: 11,),
          Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    5),
                color: Colors.white.withOpacity(
                    0.24111),

              ),
              child: Padding(
                padding: const EdgeInsets.all(
                    4.0),
                child: Text(
                  DoctorNum, style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),),
              )),

        ],
      ),
    );
  }

  Widget topratedDoctors(String image,String doctorname,String specilalization,String rate ,String location ){
  return GestureDetector  (
    onTap: () {
      Navigator.push( context, MaterialPageRoute(builder: (context) => DoctorDetailesScreen(),));
    },
    child: Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 95,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.133),
        borderRadius: BorderRadius.circular(7),
      ),
      child:Row(children: [
        Container(

          height: 80,
          width: 60,
          margin: EdgeInsets.only(left: 10),
          child: Image.asset(image,fit: BoxFit.cover,),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17,left: 15),
                child: Text(doctorname,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23),),
              ),
              SizedBox(height: 10,),
              Row(children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0,bottom: 10,left: 15),
                    child: Text(specilalization,style: TextStyle(color: Colors.black.withOpacity(0.45),fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ), ],),


            ],
          ),

        ),
        Container(
          margin: EdgeInsets.only(top: 50,left: 40),
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Row(

                  children: [
                    Icon(Icons.star,color: Colors.orangeAccent,size: 20),
                    Text(
                      rate,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5,),
              Container(
                child: Row(

                  children: [
                    Icon(Icons.fmd_good,color: Colors.orangeAccent,size: 20),
                    Text(
                      "${rate} Km",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ],
                ),
              ),
            ],),
        ),

      ],),
    ),
  );

}
}