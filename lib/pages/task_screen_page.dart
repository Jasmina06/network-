import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network_cloud/pages/sub_const_pm.dart';

class TasksScreen extends StatelessWidget {
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SubConstPm()));
                  },
                  child: Text('PMs'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Tasks'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showAddTaskDialog(context);
              },
              child: Text('+ Add Task'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Priority')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('PM Name')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Laziz')),
                      DataCell(Text('Djuraev')),
                      DataCell(Text('lazizdjuraev@email.com')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Abdulhakim')),
                      DataCell(Text('Djuraev')),
                      DataCell(Text('abdulhakimdjuraev@email.com')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Abdulhakim')),
                      DataCell(Text('Djuraev')),
                      DataCell(Text('abdulhakimdjuraev@email.com')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Abdulhakim')),
                      DataCell(Text('Djuraev')),
                      DataCell(Text('abdulhakimdjuraev@email.com')),
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

  void _showAddTaskDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Add Tasks to the list. Click save when you\'re done.'),
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
