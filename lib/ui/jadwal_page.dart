import 'package:abon/ui/dasboard.dart';
import 'package:flutter/material.dart';

class JadwalPage extends StatefulWidget {
  
  const JadwalPage({Key? key}) : super(key: key);

  @override
  _JadwalPageState createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Jadwal kerja'),
        ),
        body: ItemJadwal());
  }
}

class ItemJadwal extends StatelessWidget {
  // final Jadwal jadwal;

  // const ItemJadwal({Key? key, required this.jadwal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: <DataColumn>[
          DataColumn(label: Text("No")),
          DataColumn(label: Text("Tanggal")),
          DataColumn(label: Text("Masuk")),
          DataColumn(label: Text("Pulang")),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text("1")),
              DataCell(Text("01/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("15:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("2")),
              DataCell(Text("02/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("15:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("3")),
              DataCell(Text("03/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("15:00")),
            ],
          ),
        ],
      ),
    );
  }
}
