import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/provider/image_picker_provider.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePickerProvider = Provider.of<ImagePickerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image Picker Screen"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(context: context, builder: (context){
                  return SizedBox(
                    height: 250,
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        ElevatedButton(onPressed: (){
                          imagePickerProvider.fromCamera();


                        }, child: Text("Camera")),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: (){
                          imagePickerProvider.fromGallery();
                        }, child: Text("Gallery")),

                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: (){
                          imagePickerProvider.ClearImage();

                        }, child: Text("Clear Image")),
                      ]
                        

                    ),
                
                  );

                });
              },



              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: imagePickerProvider.image==null ?null : DecorationImage(image: FileImage(imagePickerProvider.image!)),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.image),
                      
              ),
            )
        
        
            
          ],
        ),
      ),
    );
  }
}