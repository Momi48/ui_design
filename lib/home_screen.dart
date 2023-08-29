import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _currentValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),

                    child: ElevatedButton(

                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff091227)),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      onPressed: (){
                       Navigator.pop(context);
                      },
                      child: const Icon(

                        Icons.arrow_back_outlined,
                        color: Color(0xffDBE6FF),
                      ),
                    ),
                  ),

                ),
                const Spacer(),
                const Text('Playing Now',
                    style: TextStyle(color: Color(0xffDBE6FF), fontSize: 25)),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xff5CE9BD),
                        blurRadius: 45,
                        spreadRadius: -20,
                        offset: Offset(0, 20)),
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: const Image(
                  image: NetworkImage(
                      'https://i.discogs.com/CxL0UYyB-PoJbsdy3Ij06zfN-hJm2LEq0oi7mTAqgGQ/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk3Nzgy/OTktMTQ4NjIwMzY4/Ny02NTM1LmpwZWc.jpeg'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: Text(
                          'Believer',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xffEAF0FF),
                              fontSize: 30),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Text(
                          'IMAGINE DRAGON',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: const Color(0xffA5C0FF).withOpacity(0.7),
                              fontSize: 23),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Icon(
                    Icons.favorite_outline_rounded,
                    size: 32,
                    color: const Color(0x00a5c0ff).withOpacity(0.7),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 27.0),
              child: Row(
                children: [
                  Icon(Icons.volume_down_outlined,
                      size: 32, color: Color(0xff8996B8)),
                  Spacer(),
                  Icon(Icons.repeat, size: 32, color: Color(0xff8996B8)),
                  SizedBox(width: 16),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child:
                        Icon(Icons.shuffle, size: 32, color: Color(0xff8996B8)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    '0:00',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: const Color(0xffA5C0FF).withOpacity(0.7),
                        fontSize: 17),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text('4:20',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xffA5C0FF).withOpacity(0.7),
                          fontSize: 17)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Slider(
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
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.skip_previous, size: 60, color: Color(0xffEAF0FF)),
                Icon(Icons.pause, size: 60, color: Color(0xffEAF0FF)),
                Icon(
                  Icons.skip_next,
                  size: 60,
                  color: Color(0xffEAF0FF),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
