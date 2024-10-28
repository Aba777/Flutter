import 'package:flutter/material.dart';
import 'package:flutter_project/widget/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_project/pages/login.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool glace = false, pizza = false, burger = false, salade = false;

  void _signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => LogIn()), // Redirection vers la page login
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Aba,", style: AppWidget.boldTextFieldStyle()),
                GestureDetector(
                  onTap: _signOut, // Action pour déconnexion
                  child: Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Color(0xffff5722),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.logout, // Icône de déconnexion
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Le Restaurant",
                style: AppWidget.HeadLineboldTextFieldStyle()),
            Text(" Découvrez un tout nouveau monde de saveur",
                style: AppWidget.LightTextFieldStyle()),
            SizedBox(
              height: 30.0,
            ),
            Container(margin: EdgeInsets.only(right: 20.0), child: showItem()),
            SizedBox(
              height: 13.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/pizza.jpg",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Text("Pizza Margherita",
                                style: AppWidget.semiBoldTextFieldStyle()),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Très bon",
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\7000 Fcfa",
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/burger.jpg",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Text("Big Cheesy",
                                style: AppWidget.semiBoldTextFieldStyle()),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Très bon",
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\4500 Fcfa",
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/glace.jpg",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Text("Trio gagnant",
                                style: AppWidget.semiBoldTextFieldStyle()),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Très bon",
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\2000 Fcfa",
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
                margin: EdgeInsets.only(right: 20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/salad.png",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Salade Asiatique",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                )),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Consistant",
                                  style: AppWidget.LightTextFieldStyle(),
                                )),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "\3650 Fcfa",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            glace = true;
            pizza = false;
            burger = false;
            salade = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: glace ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/glace.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: glace ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            glace = false;
            pizza = false;
            burger = true;
            salade = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            glace = false;
            pizza = true;
            burger = false;
            salade = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            glace = false;
            pizza = false;
            burger = false;
            salade = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salade ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/salade.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salade ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
