import 'package:abon/bloc/logout_block.dart';
import 'package:abon/helpers/api.dart';
import 'package:abon/helpers/user_info.dart';
import 'package:abon/model/login.dart';
import 'package:abon/ui/jadwal_page.dart';
import 'package:abon/ui/login_page.dart';
import 'package:abon/ui/scanner_page.dart';
import 'package:flutter/material.dart';

class Dasboard extends StatefulWidget {
  String? nama;
  String? img;

  Dasboard(this.nama, this.img, {Key? key}) : super(key: key);

  @override
  _DasboardState createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  get data => Login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(children: [
            Text('Dasboard'),
          ]),
          actions: [
            Icon(
              Icons.help_outline,
              size: 25.0,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text('Logout'),
                trailing: const Icon(Icons.logout),
                onTap: () async {
                  await LogoutBloc.logout().then((value) => {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()))
                      });
                },
              )
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 15, 15, 50),
                            child: Container(
                                width: 185,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'http://10.0.2.2/Ab-On_Rest-Client/assets/images/profile/' +
                                              widget.img.toString()),
                                      radius: 70,
                                    ),
                                    Padding(padding: EdgeInsets.all(8.0)),
                                    Text(
                                      widget.nama.toString(),
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )),
                          ),
                          elevation: 0,
                        ),
                        Card(
                          child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timelapse_outlined,
                                          size: 25.0,
                                          color: Colors.blueGrey,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Hari ini anda masuk Shift 1',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        Card(
                            child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JadwalPage()));
                          },
                          child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month_outlined,
                                          size: 25.0,
                                          color: Colors.blueGrey,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Lihat jadwal',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_outlined,
                                      size: 25.0,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              )),
                        )),
                        Card(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ScannerPage()));
                            },
                            child: Container(
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.qr_code_scanner_outlined,
                                            size: 25.0,
                                            color: Colors.blueGrey,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'Lakukan Absensi',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        size: 25.0,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ],
                    )))));
  }
}

class DataUser extends StatelessWidget {
  final Login data;

  const DataUser({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 50),
        child: Container(
            width: 185,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                  radius: 70,
                ),
                Text(
                  data.userNama.toString(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                )
              ],
            )),
      ),
      elevation: 0,
    );
  }
}
