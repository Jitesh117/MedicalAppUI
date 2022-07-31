import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app_ui/docName.dart';
import 'package:medical_app_ui/docType.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Jerome Bell',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.shade300,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                // padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/doctors.png',
                      height: 150,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'How do you feel?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Fill our your medical card now',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurple.shade300,
                          ),
                          child: const Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'How can we help you?',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              height: 80,
              // color: Colors.blue,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DocType(imagePath: 'assets/teeth.png', docName: 'Dentist'),
                  DocType(imagePath: 'assets/surge.png', docName: 'Surgeon'),
                  DocType(imagePath: 'assets/ther.png', docName: 'Therapist'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Doctor list',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Show all',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, top: 25, bottom: 25),
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DocName(
                      imagePath: 'assets/Rajesh.jpg',
                      star: '4.9',
                      name: 'Dr. Rajesh Gupta',
                      role: 'Surgeon',
                      exp: '7'),
                  DocName(
                      imagePath: 'assets/Ryan.jpg',
                      star: '4.8',
                      role: 'Therapist',
                      name: 'Dr. Ryan Kernan',
                      exp: '5'),
                  DocName(
                      imagePath: 'assets/Bruno.jpg',
                      star: '4.9',
                      name: 'Dr. Bruno Kirk',
                      role: 'Dentist',
                      exp: '10'),
                  DocName(
                      imagePath: 'assets/Linda.jpg',
                      star: '4.7',
                      name: 'Dr. Linda Paul',
                      role: 'Peditatrician',
                      exp: '5'),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple.shade300,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.bell,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_rounded),
            label: '',
          ),
        ],
      ),
    );
  }
}
