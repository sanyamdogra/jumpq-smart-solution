import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:image_picker/image_picker.dart';

class ObjectDetection extends StatefulWidget {
  @override
  _ObjectDetectionState createState() => _ObjectDetectionState();
}

class _ObjectDetectionState extends State<ObjectDetection> {
   File _image;

  List<String> labelTexts = new List();
  Future<void> detectLabels() async {
    final FirebaseVisionImage visionImage =
        FirebaseVisionImage.fromFile(_image);
    final LabelDetector labelDetector = FirebaseVision.instance
        .labelDetector(LabelDetectorOptions(confidenceThreshold: 0.80));
    final List<Label> labels = await labelDetector.detectInImage(visionImage);

    for (Label label in labels) {
      final String text = label.label;
      final String entityId = label.entityId;
      final double confidence = label.confidence;

      /*_scaffoldKey.currentState.showSnackBar(SnackBar(content: Column(
         children: <Widget>[
           Text(text),
           Text(entityId),
           Text('$confidence'),
         ],
       ),));*/
      print(text);
      print(entityId);
      print(confidence);
      setState(() {
      labelTexts.add(text);
      });
    }
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Color(0xFFF8C436),
        title:  Text('Object Detection'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: _image == null
                ? Text('No Image')
                : Center(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: FileImage(
                            _image,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(200),
                        border: Border.all(
                          width: 3.0,
                          color: Color(0xFFF8C436),
                        ),
                      ),
                    ),
                  ),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            color: Color(0xFFF8C436),
            onPressed: () {
              detectLabels();
              labelTexts.clear();
            },
            child: Text(
              'Detect?',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: <Widget>[
              Text(
                'Labels Detected: $labelTexts',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'Add Image',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor:  Color(0xFFF8C436),
        onPressed: getImage,
        icon: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }
}