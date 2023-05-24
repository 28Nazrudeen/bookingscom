import 'package:booking/bottomnavigation/bottombar.dart';
import 'package:booking/common_widgets/bottombar.dart';
import 'package:flutter/material.dart';

class StayPage extends StatelessWidget {
  const StayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // color: Colors.yellow,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                  height: 230,
                  margin: EdgeInsets.all(18),
                  padding: EdgeInsets.all(5),
                  width: size.width,
                  //color: Colors.yellow,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5))),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your destination',
                              icon: Icon(Icons.search)),
                        ),
                        margin: EdgeInsets.only(bottom: 5),
                        height: 50,
                        width: size.width,
                      ),
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Mon,Mar 13 - Tue,Mar14 ',
                              icon: Icon(Icons.calendar_month_outlined)),
                        ),
                        margin: EdgeInsets.only(bottom: 5),
                        height: 50,
                        width: size.width,
                        color: Colors.white,
                      ),
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '1 room 2 adults 0 children ',
                              icon: Icon(Icons.person_2)),
                        ),
                        margin: EdgeInsets.only(bottom: 5),
                        height: 50,
                        width: size.width,
                        color: Colors.white,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Search",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),

                        decoration: BoxDecoration(
                            color: Color(0xff002bfe),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5))),
                        height: 50,
                        width: size.width,
                        //color: Color(0xff002bfe),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(18),
                  child: Container(
                    //side: BorderSide(color: Colors.white70, width: 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),

                    height: 150,
                    width: size.width,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: size.height,
                          width: size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Get instant discounts",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                    "Sign into Booking.com and look for the Genius logo to sava"),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(5),
                                        topLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5))),
                                margin: EdgeInsets.only(top: 10),
                                height: size.height * 0.05,
                                width: size.width * 0.2,
                                //color: Colors.blue,
                                child: Center(
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: size.height,
                          width: size.width * 0.4,
                          color: Colors.blue,
                          child: Image.network(
                              'https://randomuser.me/api/portraits/men/57.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 800,
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: 10,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text("sfagreg"),
                        );
                      }),
                )
              ],
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: BottomBarCustom())
        ],
      ),
    );
  }
}
