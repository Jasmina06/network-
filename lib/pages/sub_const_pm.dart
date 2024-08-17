import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network_cloud/pages/task_screen_page.dart';

class SubConstPm extends StatelessWidget {
  String id = "sub_const_pm";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Constructor - Jasmina',style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.purple,
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('PMs'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the Tasks screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TasksScreen()),
                    );
                  },
                  child: Text('Tasks'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showAddPmDialog(context);
              },
              child: Text('+ Add PM'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('First Name')),
                    DataColumn(label: Text('Last Name')),
                    DataColumn(label: Text('Email')),
                    DataColumn(label: Text('Phone Number')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Jasmina')),
                      DataCell(Text('Abduxakimova')),
                      DataCell(Text('jasminaabduxakimova@email.com')),
                      DataCell(Text('+998 99 322 45 32')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Olya')),
                      DataCell(Text('Sabirova')),
                      DataCell(Text('olyasabirova@email.com')),
                      DataCell(Text('+998 99 322 45 32')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Abdulhakim')),
                      DataCell(Text('Djuraev')),
                      DataCell(Text('abdulhakimdjuraev@email.com')),
                      DataCell(Text('+998 99 322 45 32')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Ali')),
                      DataCell(Text('Djuraev')),
                      DataCell(Text('alidjuraev@email.com')),
                      DataCell(Text('+998 99 322 45 32')),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddPmDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add PM'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Add PM to the list. Click save when you\'re done.'),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Priority',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'PM Name',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Save changes'),
            ),
          ],
        );
      },
    );
  }
}

