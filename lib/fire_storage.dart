import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FireStorage extends StatefulWidget {
  const FireStorage({Key? key}) : super(key: key);

  @override
  State<FireStorage> createState() => _FireStorageState();
}

class _FireStorageState extends State<FireStorage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is test Page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              final results = await FilePicker.platform.pickFiles(
                allowMultiple: false,
                type: FileType.custom,
                allowedExtensions: ['png', 'jpg'],
              );
              if (results == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('No File Selected'),
                  ),
                );
                return null;
              }
              final path = results.files.single.path!;
            },
            child: Text('Upload file'),
          ),
        ],
      ),
    );
  }
}
