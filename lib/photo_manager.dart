import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:stoy/firebase_manager.dart';

enum ImageCategory { diet }

class ImagePickerManager {
  static final _imagePicker = ImagePicker();

  static String getDefaultDownloadImageUrl(ImageCategory imageCategory) {
    switch (imageCategory) {
      case ImageCategory.diet:
        return 'https://firebasestorage.googleapis.com/v0/b/stoy-f9a3b.appspot.com/o/defaultImages%2Fdiet.png?alt=media&token=c4fac23c-8b3c-4209-b321-5ce1de52a9a1';
      default:
        return '';
    }
  }

  static Future<String> getImageFromLibrary(
      {required String userId, required ImageCategory imageCategory}) async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      File pickedFile = File(image.path);
      String fileName = pickedFile.path.split('/').last;
      final ref = FirebaseManager.storage
          .ref()
          .child('${imageCategory.name}/$userId/$fileName');
      await ref.putFile(pickedFile);
      return ref.getDownloadURL();
    }
    return getDefaultDownloadImageUrl(imageCategory);
  }
}
