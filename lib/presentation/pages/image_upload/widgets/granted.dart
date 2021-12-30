import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Granted extends StatefulWidget {
  const Granted({Key? key}) : super(key: key);

  @override
  _GrantedState createState() => _GrantedState();
}

class _GrantedState extends State<Granted> {
  Future<void> launchImagePicker() async {
    final ImagePicker _imagePicker = ImagePicker();
    List<XFile>? images = await _imagePicker.pickMultiImage();
    if (images != null) {
      print(images.map((image) => 'Image name: ${image.name}'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              launchImagePicker();
            },
            icon: const Icon(Icons.camera_alt),
            tooltip: 'Click to upload photos',
          ),
          const Text('Click to upload images'),
        ],
      ),
    );
  }
}
    //   return Column(
    //     children: [
    //       const SizedBox(
    //         height: 52,
    //       ),
    //       Center(
    //         child: GestureDetector(
    //           onTap: () async {
    //             List<XFile>? images = await imagePicker.pickMultiImage();
    //             setState(() {
    //               _images = images;
    //             });
    //           },
    //           child: _images != null
    //               ? Column(
    //                   children:
    //                       convertImagesToRenderWidget(_images ?? List.empty()))
    //               // child: Container(
    //               //     width: 200,
    //               //     height: 200,
    //               //     decoration: BoxDecoration(color: Colors.red[200]),
    //               //     child: _images != null
    //               //         ? _ima
    //               //         ? Image.file(
    //               //             _images,
    //               //             width: 200.0,
    //               //             height: 200.0,
    //               //             fit: BoxFit.fitHeight,
    //               //           )
    //               : Container(
    //                   decoration: BoxDecoration(color: Colors.red[200]),
    //                   width: 200,
    //                   height: 200,
    //                   child: Icon(Icons.camera_alt, color: Colors.grey[800]),
    //                 ),
    //         ),
    //       )
    //     ],
    //   );
