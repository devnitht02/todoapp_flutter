import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class MemoStoragePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memo Storage'),
      ),
      body: Center(
        child: Text('Your memo storage content goes here.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Open file picker to select files
          FilePickerResult? result = await FilePicker.platform.pickFiles();

          if (result != null) {
            // Process selected files
            List<String> filePaths = result.paths.map((path) => path!).toList();
            // Save filePaths to memo_storage.dart or handle saving logic
            saveToMemoStorage(context, filePaths);
          } else {
            // User canceled the file picker
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }

  // Function to save file paths to memo_storage.dart or handle saving logic
  void saveToMemoStorage(BuildContext context, List<String> filePaths) {
    // Implement your saving logic here
    // For example, you can write filePaths to a file or store them in a database
    // You can also navigate to another page passing the selected filePaths
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MemoStorageDetailsPage(filePaths: filePaths)),
    );
  }
}

class MemoStorageDetailsPage extends StatelessWidget {
  final List<String> filePaths;

  const MemoStorageDetailsPage({required this.filePaths});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memo Storage Details'),
      ),
      body: ListView.builder(
        itemCount: filePaths.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(filePaths[index]),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MemoStoragePage(),
  ));
}
