import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _image;
  double _height = 0.0;

  ImagePicker picker = ImagePicker();

  void picImage(ImageSource src) async {
    final XFile? _pickedfile = await picker.pickImage(source: src);

    setState(() {
      _image = File(_pickedfile!.path);
    });

    if (_image != null) {
      setState(() {
        _height = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile data"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                setState(() {
                  _height = 70;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: MediaQuery.of(context).size.height * 0.2,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: _image != null
                        ? Image.file(
                            _image!,
                            height: 120,
                            width: 120,
                          )
                        : Image.asset(
                            "assets/images/logo.png",
                            height: 120,
                            width: 120,
                          ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
              ),
              child: const ListTile(
                title: Center(
                  child: Text(
                    "Name: Ahmad Khaled Elhafee",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 20,
              left: 20,
              bottom: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
              ),
              child: const ListTile(
                title: Center(
                  child: Text(
                    "Age: 23",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 20,
              left: 20,
              bottom: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
              ),
              child: const ListTile(
                title: Center(
                  child: Text(
                    "Phone: 01110235893",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
            padding: const EdgeInsets.only(right: 0, left: 0),
            child: _height >= MediaQuery.of(context).size.width * 0.3
                ? AnimatedContainer(
                    curve: Curves.ease,
                    duration: const Duration(seconds: 1),
                    height: _height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      color: const Color.fromRGBO(41, 37, 88, 1),
                      border: Border.all(
                        color: const Color.fromRGBO(41, 37, 88, 100),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: InkWell(
                                child: Container(
                                  height: 30,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          182, 139, 26, 100),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: Text(
                                      "Pick from Gallery",
                                      style: GoogleFonts.notoSerif(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  picImage(ImageSource.gallery);
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: InkWell(
                                child: Container(
                                  height: 30,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          182, 139, 26, 100),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: Text(
                                      "Pick from Camera",
                                      style: GoogleFonts.notoSerif(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  picImage(ImageSource.camera);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: _height,
                    curve: Curves.ease,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      color: const Color.fromRGBO(41, 37, 88, 1),
                      border: Border.all(
                        color: const Color.fromRGBO(41, 37, 88, 100),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.1,
                            left: MediaQuery.of(context).size.width * 0.1,
                            top: 20,
                          ),
                          child: InkWell(
                            child: Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(182, 139, 26, 100),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  "Change your profile picture",
                                  style: GoogleFonts.notoSerif(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              _height == MediaQuery.of(context).size.width * 0.6
                                  ? setState(() {
                                      _height = 70;
                                    })
                                  : setState(() {
                                      _height =
                                          MediaQuery.of(context).size.width *
                                              0.3;
                                    });
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
      ),
    );
  }
}
