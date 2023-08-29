import 'package:flutter/material.dart';

import 'package:ui_design/home_screen.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  double _currentValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _globalKey,
          drawer: Drawer(
            backgroundColor: const Color(0xff091227),
            child: ListView(
              children: [
                ListTile(
                  title: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff091227)),
                      elevation: MaterialStateProperty.all<double>(0),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },

                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.close,size: 32,color: Color(0xffDBE6FF)),
                      ],
                    ),
                  ),
               //   leading: Icon(Icons.close,size: 32,color: Color(0xffDBE6FF)),
                ),
                const SizedBox(
                  height: 30,
                ),
                ListTile(


                    title: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff091227)),
                        elevation: MaterialStateProperty.all<double>(0),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 2), // Add some spacing between icon and text
                          Text(
                            'Home',
                            style: TextStyle(color: const Color(0xffA5C0FF).withOpacity(0.7)),
                          ),
                        ],
                      ),
                    ),


                  leading:  Icon(Icons.home,color: const Color(0xffA5C0FF).withOpacity(0.7))

                ),


                ListTile(
                  leading: Icon(Icons.settings,
                      color: const Color(0xffA5C0FF).withOpacity(0.7)),
                  title: Text('Settings',
                      style:
                          TextStyle(color: const Color(0xffA5C0FF).withOpacity(0.7))),
                ),
                ListTile(
                  leading: Icon(Icons.notifications,
                      color: const Color(0xffA5C0FF).withOpacity(0.7)),
                  title: Text('Notifications',
                      style:
                          TextStyle(color: const Color(0xffA5C0FF).withOpacity(0.7))),
                ),
                ListTile(
                  leading: Icon(Icons.person,
                      color: const Color(0xffA5C0FF).withOpacity(0.7)),
                  title: Text('Profile',
                      style:
                          TextStyle(color: const Color(0xffA5C0FF).withOpacity(0.7))),
                ),
              ],
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Color(0xffEAF0FF),
                      ),
                      color: Colors.white,
                      onPressed: () {
                        _globalKey.currentState?.openDrawer();
                      },
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.0),
                child: Text(
                  "Recommneded For You",
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffEAF0FF),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 29.0, horizontal: 25),
                      child: Column(
                        children: [
                          Container(
                            height: 230,
                            width: 250,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xffEE5123).withAlpha(125),
                                  blurRadius: 35,
                                  spreadRadius: -10,
                                  offset: const Offset(0, 15),
                                )
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: const Image(
                                image: AssetImage('images/Covers.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Monster Go Bump',
                              style: TextStyle(
                                  color: Color(0xffEAF0FF), fontSize: 16)),
                          Text('Erica',
                              style: TextStyle(
                                  color: const Color(0xffA5C0FF).withOpacity(0.7),
                                  fontSize: 16)),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 230,
                          width: 250,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xffB26F14).withAlpha(125),
                                blurRadius: 20,
                                spreadRadius: -10,
                                offset: const Offset(0, 20),
                              )
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: const Image(
                              image: AssetImage('images/Source.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('Moments Apart',
                            style: TextStyle(
                                color: Color(0xffEAF0FF), fontSize: 16)),
                        Text('ODESSA',
                            style: TextStyle(
                                color: const Color(0xffA5C0FF).withOpacity(0.7),
                                fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Text(
                  'My Playlist',
                  style: TextStyle(fontSize: 32, color: Color(0xffEAF0FF)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff5CE9BD).withAlpha(125),
                                    blurRadius: 20,
                                    spreadRadius: -15,
                                    offset: const Offset(0, 20),
                                  )
                                ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: const Image(
                                    image: AssetImage('images/image 7.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Believer',
                                  style: TextStyle(
                                      color: Color(0xffEAF0FF), fontSize: 20)),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.withAlpha(125),
                                    blurRadius: 45,
                                    spreadRadius: -10,
                                    offset: const Offset(0, 0),
                                  )
                                ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: const Image(
                                    image: AssetImage('images/image 6.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Shortwave',
                                  style: TextStyle(
                                      color: Color(0xffEAF0FF), fontSize: 20)),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Slider(
                      value: _currentValue,
                      min: 0,
                      max: 10,
                      activeColor: const Color(0xffFFFFFF),
                      inactiveColor: const Color(0xffFFFFFF).withOpacity(0.3),
                      onChanged: (value) {
                        setState(() {
                          _currentValue = value;
                        });
                      }),
                  const Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image(
                            image: AssetImage('images/retro.png'),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Chaff & Dust',
                              style: TextStyle(
                                  color: Color(0xffEAF0FF), fontSize: 20)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('HYONNA',
                              style: TextStyle(
                                  color: Color(0xffA5C0FF), fontSize: 13)),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.skip_previous,
                          size: 40, color: Color(0xffEAF0FF)),
                      Icon(Icons.pause, size: 40, color: Color(0xffEAF0FF)),
                      Icon(
                        Icons.skip_next,
                        size: 40,
                        color: Color(0xffEAF0FF),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
