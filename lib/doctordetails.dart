import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'main.dart';
class DoctorDetailesScreen extends StatefulWidget {
  @override
  _DoctorDetailesScreenState createState() => _DoctorDetailesScreenState();
}

class _DoctorDetailesScreenState extends State<DoctorDetailesScreen> {
  @override
  date()
  {
    DateTime now= new DateTime.now();
    var formatter = new DateFormat().add_yMMM().format(now);
    return formatter;  }
  dateyear()
  {
    DateTime now= new DateTime.now();
    var formatternum = new DateFormat().add_E().format(now);


    return  formatternum;  }
  dateyear2()
  {
  DateTime now= new DateTime.now();
  var formatterd = new DateFormat().add_d().format(now);


  return  formatterd;  }
  List<DateTime> calculateDaysInterval(DateTime startDate, DateTime endDate) {
    List<DateTime> days = [];
    for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
      days.add(startDate.add(Duration(days: i)));
    }
    return days;
  }
  var start = DateTime.now();   var end = DateTime.now().add(Duration(hours: 100));   var list = [];


//  days(day,numday)
//  {
//    DateTime now= new DateTime.now();
//    for(var i =DateTime(day).day;i<30;i++)
//      {
//        print("${i}");
//      }
//  }

  Widget build(BuildContext context) {

    return initWidget(context);
  }
  Widget initWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        centerTitle: true,
        backgroundColor: Color(0xff053F5E),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
//            size: 15,
          ),
        ),
        actions: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 20,top: 15),
              child: Stack(
               children: const [
                 Icon(
                   Icons.notifications_outlined,
                   color: Colors.white,
                   size: 25,
                 ),
                 Positioned(
                   right: 2,
                   top: 3,
                   child: CircleAvatar(
                     maxRadius: 5,
                     backgroundColor: Colors.green,
                   ),
                 )
               ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                  color: Color(0xff053F5E),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
              ),
              child: Container(
                margin: EdgeInsets.only(left: 30, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 150,
                      margin: EdgeInsets.only(bottom: 20),
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/images/doctor1.jpg",fit: BoxFit.cover,
                        ),
                      ),
//                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(20),
//                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: const Text('Dr. Fred Mask',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: const Text('Heart surgen',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,

                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: const [
                                Icon(Icons.star,color: Colors.orange,size: 20,),
                                Icon(Icons.star,color: Colors.orange ,size: 20,),
                                Icon(Icons.star,color: Colors.orange,size: 20,),
                                Icon(Icons.star,color: Colors.orange,size: 20,),
                                Icon(Icons.star,color: Colors.orange,size: 20,),
                              ],
                            )
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 16),
              child: Container(

                child: Text(
                 '${date()}',
//                '${DateFormat('dd/MM/yy')}',
                  style: const TextStyle(
                    color: Color(0xff363636),
                    fontSize: 25,
                   
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [
                  Dates('${dateyear()}', '${dateyear2()}', true),
                  Dates('sat', '19', false),
///                Text('${calculateDaysInterval(start, end)}'),
                  Dates("sun", "20", false),
                  Dates("mon", "21", false),
                  Dates("tue", "22", false),
                  Dates("wed", "23", false),
                  Dates("thur", "24", false),
                  Dates("fri", "25", false),
                  Dates("sat", "26", false),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: const Text('Morning',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,

                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.7,
                children: [
                  DoctorTimes("08:30 AM", true),
                  DoctorTimes("08:30 AM", false),
                  DoctorTimes("08:30 AM", false),
                  DoctorTimes("08:30 AM", false),
                  DoctorTimes("08:30 AM", false),
                  DoctorTimes("08:30 AM", false),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 30),
              child: const Text('Evening',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,

                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.6,
                children: [
                  DoctorTimes("08:30 AM", true),
                  DoctorTimes("08:30 AM", false),
                  DoctorTimes("08:30 AM", false),
                  DoctorTimes("08:30 AM", false),
                  DoctorTimes("08:30 AM", false),
                  DoctorTimes("08:30 AM", false),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 54,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff107163),
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x17000000),
                    offset: Offset(0, 15),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Text(
                'Make An Appointment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,

                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Dates(String day, String date, bool isSelected) {
    return isSelected ? Container(
      width: 75,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xff107163),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              day,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 21,

                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(5),
            child: Text(
              date,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,

                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    ) : Container(
      width: 70,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.0840000),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              day,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,

                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(7),
            child: Text(
              date,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,

                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget DoctorTimes(String time, bool isSelected) {
    return isSelected ? Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      decoration: BoxDecoration(
        color: Color(0xff107163),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: const Icon(
              Icons.access_time,
              color: Colors.white,
              size: 18,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 2),
            child: const Text('08:30 AM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                
              ),
            ),
          ),
        ],
      ),
    ) : Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.080000),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: const Icon(
              Icons.access_time,
              color: Colors.black,
              size: 18,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 2),
            child: const Text('08:30 AM',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,

              ),
            ),
          ),
        ],
      ),
    );
  }
}