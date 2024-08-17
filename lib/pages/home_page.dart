import 'package:flutter/material.dart';
import 'add_subconstructor_dialog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gen Constructor - Jasmina'),
      ),
      body: ListView.builder(
        itemCount: 5, // Adjust the item count as necessary
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item ${index + 1}'),
            subtitle: Text('Details about Item ${index + 1}'),
            leading: Icon(Icons.label),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddSubconstructorDialog();
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }
}
