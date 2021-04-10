import 'package:flutter/material.dart';
import 'package:portfolio/widget/app_bar_button.dart';

class WebHomePage extends StatefulWidget {
  @override
  _WebHomePageState createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Text(
                        'PedroRG',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          letterSpacing: 3.0,
                          color: Color(0xff7C54E3),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DefaultTabController(
                            length: 3,
                            child: TabBar(
                              indicatorColor: Colors.transparent,
                              tabs: [
                                Tab(child: AppBarButton(text: 'About')),
                                Tab(child: AppBarButton(text: 'Portfolio')),
                                Tab(child: AppBarButton(text: 'Contact'))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.55,
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.6,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Hello, I’m ',
                                    style: TextStyle(
                                      fontSize: 40.0,
                                    )),
                                Text('Pedro Rodríguez.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40.0,
                                      color: Color(0xff7C54E3),
                                    ))
                              ],
                            ),
                            Text('I’m a passionate mobile developer.',
                                style: TextStyle(
                                  fontSize: 40.0,
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      child: Container(
                        width: 600,
                        height: 600,
                        child: CustomPaint(
                          painter: DrawCircle(),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff7C54E3)
      ..style = PaintingStyle.fill;
    //a circle
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawCircle(Offset(450, 380), 380, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
