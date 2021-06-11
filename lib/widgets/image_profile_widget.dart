import 'dart:io';
import 'package:app_logistica/util/constants.dart';
import 'package:app_logistica/util/constraints.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageProfileWidget extends StatefulWidget {
  @override
  _ImageProfileWidgetState createState() => _ImageProfileWidgetState();
}

class _ImageProfileWidgetState extends State<ImageProfileWidget> {
  File? _image;
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 60.0,
            child: ClipOval(
              child: SizedBox(
                width: 120.0,
                height: 120.0,
                child: (_image != null)
                    ? Image.file(_image!, fit: BoxFit.fill,)
                    : Image.asset('assets/usuario.jpg', fit: BoxFit.fill),
              ),
            ),
            backgroundColor: Colors.white,
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheet(context)));
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.black,
                size: 25.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
      _image = File(_imageFile!.path);
    });
  }

  Widget bottomSheet(BuildContext context) {
    return Container(
      height: 100.0,
      width: calculateMaxWidth(context),
      margin: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 0.0),
      child: Column(
        children: [
          Text('Elige una foto de perfil.'),
          SizedBox(
            height: space2,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text('Camara')),
            FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text('Galería')),
          ]),
        ],
      ),
    );
  }
}
