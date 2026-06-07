import 'package:flutter/material.dart';
final String image1 = "assets/w4-s2/bird.jpg";
final String image2 = "assets/w4-s2/bird2.jpg";
final String image3 = "assets/w4-s2/girl.jpg";
final String image4 = "assets/w4-s2/insect.jpg";
final String image5 = "assets/w4-s2/man.jpg";
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
    home: ImageGallery(),
    ),
  );
}
class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  String currentImage = image1;
  void onTapForward(){
    setState(() {
      if (currentImage == image1){
        currentImage = image2;
      }
      else if ( currentImage == image2){
        currentImage = image3;
      }
      else if (currentImage == image3){
        currentImage = image4;
      }
      else if (currentImage == image4){
        currentImage = image5;
      }
      else {
        currentImage = image1;
      }
    });
  }
  void onTapBackward(){
    setState(() {
      if (currentImage == image1){
        currentImage = image5;
      }
      else if ( currentImage == image2){
        currentImage = image1;
      }
      else if (currentImage == image3){
        currentImage = image2;
      }
      else if (currentImage == image4){
        currentImage = image3;
      }
      else {
        currentImage = image4;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image viewer"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: onTapBackward, icon: Icon(Icons.chevron_left)),
          IconButton(onPressed: onTapForward, icon: Icon(Icons.chevron_right)),
        ],
      ),
      body: Image.asset(currentImage),
    );
  }
}
