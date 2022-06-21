import 'package:abon/model/jadwal.dart';
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
      scrollDirection: Axis.vertical,
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
          DataRow(
            cells: <DataCell>[
              DataCell(Text("4")),
              DataCell(Text("04/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("15:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("5")),
              DataCell(Text("05/06/2022")),
              DataCell(Text("libur")),
              DataCell(Text("linur")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("6")),
              DataCell(Text("06/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("7")),
              DataCell(Text("07/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("8")),
              DataCell(Text("08/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("9")),
              DataCell(Text("09/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("10")),
              DataCell(Text("10/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("11")),
              DataCell(Text("11/06/2022")),
              DataCell(Text("libur")),
              DataCell(Text("libur")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("12")),
              DataCell(Text("12/06/2022")),
              DataCell(Text("libur")),
              DataCell(Text("libur")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("13")),
              DataCell(Text("13/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("16:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("14")),
              DataCell(Text("14/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("16:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("15")),
              DataCell(Text("15/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("16:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("16")),
              DataCell(Text("16/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("16:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("17")),
              DataCell(Text("17/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("16:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("18")),
              DataCell(Text("18/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("16:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("19")),
              DataCell(Text("19/06/2022")),
              DataCell(Text("libur")),
              DataCell(Text("libur")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("20")),
              DataCell(Text("20/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("21")),
              DataCell(Text("21/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("22")),
              DataCell(Text("22/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("23")),
              DataCell(Text("23/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("24")),
              DataCell(Text("24/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("25")),
              DataCell(Text("25/06/2022")),
              DataCell(Text("09:00")),
              DataCell(Text("18:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("26")),
              DataCell(Text("26/06/2022")),
              DataCell(Text("libur")),
              DataCell(Text("libur")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("27")),
              DataCell(Text("27/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("15:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("28")),
              DataCell(Text("28/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("15:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("29")),
              DataCell(Text("29/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("15:00")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("30")),
              DataCell(Text("30/06/2022")),
              DataCell(Text("07:00")),
              DataCell(Text("15:00")),
            ],
          ),
        ],
      ),
    );
  }
}
