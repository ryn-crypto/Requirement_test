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
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  child: const Icon(Icons.search, size: 26.0),
                  onTap: () async {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ProdukForm()));
                  },
                ))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text('Dasboard'),
                trailing: const Icon(Icons.home),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dasboard()));
                },
              ),
              ListTile(
                title: const Text('Logout'),
                trailing: const Icon(Icons.logout),
                onTap: () async {
                  // await LogoutBloc.logout().then((value) => {
                  //       Navigator.pushReplacement(context,
                  //           MaterialPageRoute(builder: (context) => LoginPage()))
                  //     });
                },
              )
            ],
          ),
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
