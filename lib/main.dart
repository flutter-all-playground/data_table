import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DataTable',
      theme: ThemeData.dark().copyWith(primaryColor: const Color.fromARGB(255, 18, 32, 47)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTable'),
      ),
      body: Center(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('Color')),
          ],
          rows: const [
            DataRow(
              cells: [
                DataCell(Text('Paulo')),
                DataCell(Text('30')),
                DataCell(Text('Blue')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Keli')),
                DataCell(Text('27')),
                DataCell(Text('Green')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Kael')),
                DataCell(Text('3')),
                DataCell(Text('Red')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
