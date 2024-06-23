import 'dart:convert';
import 'dart:io';
import 'package:education_management_system/constants.dart';
import 'package:education_management_system/core/utils/Api_server.dart';
import 'package:http/http.dart' as http;
import 'package:education_management_system/core/Widgets/ActionButton.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/utils/Styles.dart';

import 'course_content_main_column.dart';
import 'course_videos.dart';

// ignore: must_be_immutable
class CourseContentViewBody extends StatefulWidget {
  CourseContentViewBody(
      {super.key, required this.bckcolor, required this.image});
  String image;
  Color bckcolor;

  @override
  State<CourseContentViewBody> createState() => _CourseContentViewBodyState();
}

class _CourseContentViewBodyState extends State<CourseContentViewBody> {
  File? selectedImage;
  String? imageData, imageName;
  Future pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      selectedImage = File(pickedImage!.path);
      imageName = pickedImage.path.split('\\').last;
      imageData = base64Encode(selectedImage!.readAsBytesSync());

      print(imageName);
      UploadImage(Location:isProfessor? 'UploadImage':'UploadAnswer');
      //UploadAnswer
    });
  }

  Future<void> UploadImage({required String?  Location}) async {
    try {
      String uri = 'http://192.168.1.7/api_education/user/$Location.php';
      if(Location=='UploadAnswer'){
         var resp = await http
          .post(Uri.parse(uri), body: {'caption':'answer','name': imageName, 'data': imageData});
      var response = jsonDecode(resp.body);
      if (response['success'] == 'true') {
        print('data inserted');
        setState(() {});
      } else {
        print('problem');
      }
      }
      else{
      var resp = await http
          .post(Uri.parse(uri), body: {'name': imageName, 'data': imageData});
      var response = jsonDecode(resp.body);
      if (response['success'] == 'true') {
        print('data inserted');
        setState(() {});
      } else {
        print('problem');
      }}
    } catch (e) {
      print(e);
    }
  }
  Future<void> getQiuz()async{
    try {
      List data = await Api().get(endPoint: 'getquiz');
      imageName = data[data.length-1]['img'];
      print(imageName);
  }catch (e){
    print(e);
  }
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: courseContentMaincolumn(
              image: widget.image, bckcolor: widget.bckcolor),
        ),
        SliverToBoxAdapter(
          child:isProfessor? Column(
            children: [
              ActionButton(
                buttoncolor: Colors.blueGrey,
                buttontext: 'Upload Question',
                onpressed: () {
                  pickImage();
                },
              ),
              SizedBox(
                height: 20,
              ),
              selectedImage != null ? Image.file(selectedImage!) : SizedBox()
            ],
          ):Column(
            children: [
              ActionButton(buttontext: 'View Quiz', onpressed: () {
                getQiuz();
                setState(() {
                  
                });
              },),
              SizedBox(height: 20,),
              imageName!=null?Image.network("http://192.168.1.7/api_education/user/"+imageName!):SizedBox(),
              ActionButton(  buttoncolor: Colors.blueGrey,
                buttontext: 'Upload Answer',
                onpressed: () {
                  pickImage();
                },)
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Course videos',
                style: Styles.style22.copyWith(fontWeight: FontWeight.bold),
              ),
              const Divider(
                height: 30,
                thickness: 2,
              ),
            ]),
          ),
        ),
        SliverList.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: courseVideos(
                  bckcolor: widget.bckcolor,
                  image: widget.image,
                  videonum: index),
            );
          },
        )
      ],
    );
  }
}
