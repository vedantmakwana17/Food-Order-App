import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zomato/const/const.dart';

class Four extends StatefulWidget {
  const Four({super.key});

  @override
  State<Four> createState() => _FourState();
}

class _FourState extends State<Four> {
  final ImagePicker _picker = ImagePicker();
  XFile? pickedSingleImage;
  List<XFile> pickedMultiImageList = [];

  Future pickMultipleImageFromGallery() async {
    pickedSingleImage =
        await _picker.pickImage(imageQuality: 100, source: ImageSource.gallery);
    setState(() {});
  }

  Future pickFromGallery() async {
    pickedSingleImage = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Stack(
        children: [
          // Image.asset(food,
          //     height: double.infinity,
          //     width: double.infinity,
          //     fit: BoxFit.fill),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    pickedSingleImage == null
                        ? Center(
                            child: CircleAvatar(
                              backgroundImage: AssetImage(dp),
                              radius: 80,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green),
                                  child: IconButton(
                                    onPressed: () {
                                      pickMultipleImageFromGallery();
                                    },
                                    color: Colors.black87,
                                    icon: Icon(Icons.edit),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : CircleAvatar(
                            backgroundImage:
                                FileImage(File(pickedSingleImage!.path)),
                            radius: 80,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green),
                                child: IconButton(
                                  onPressed: () {
                                    pickMultipleImageFromGallery();
                                  },
                                  color: Colors.black87,
                                  icon: Icon(Icons.edit),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 3,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Name",
                        // label: Text("password"),
                        // labelText: "Password",
                        fillColor: Colors.white,
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.login),
                        prefixIconColor: Colors.black,
                        // hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true),
                    // controller: passwordController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    decoration: InputDecoration(
                        hintText: "Number",
                        // label: Text("password"),
                        // labelText: "Password",
                        fillColor: Colors.white,
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.call),
                        prefixIconColor: Colors.black,
                        // hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true),
                    // controller: passwordController,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: " Password",
                        // label: Text("password"),
                        // labelText: "Password",
                        fillColor: Colors.white,
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.remove_red_eye_rounded),
                        prefixIconColor: Colors.black,
                        // hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true),
                    // controller: passwordController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 60,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Create"),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
