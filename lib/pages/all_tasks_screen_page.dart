import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network_cloud/pages/pm_manager_page.dart';

class AllTasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Project Manager - Jasmina',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
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
                      MaterialPageRoute(builder: (context) => PmManagerPage()),
                    );
                  },
                  child: Text('My Task'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('All Tasks'),
                ),
              ],
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
                    DataColumn(label: Text('Action')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Shaxzod')),
                      DataCell(Text('Sattorov')),
                      DataCell(Text('shaxzodsattorov@email.com')),
                      DataCell(ElevatedButton(
                        onPressed: () {},
                        child: Text('Take'),
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Abdulhakim')),
                      DataCell(Text('Djuraev')),
                      DataCell(Text('abdulhakimdjuraev@email.com')),
                      DataCell(ElevatedButton(
                        onPressed: () {},
                        child: Text('Take'),
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Aslbek')),
                      DataCell(Text('Djuraev')),
                      DataCell(Text('aslbekdjuraev@email.com')),
                      DataCell(ElevatedButton(
                        onPressed: () {},
                        child: Text('Take'),
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Abdulhakim')),
                      DataCell(Text('Sabirov')),
                      DataCell(Text('abdulhakimdsabirov@email.com')),
                      DataCell(ElevatedButton(
                        onPressed: () {},
                        child: Text('Take'),
                      )),
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
}
