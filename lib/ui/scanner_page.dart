// import 'package:barcode_scan/barcode_scan.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class ScannerPage extends StatefulWidget {
//   const ScannerPage({Key? key}) : super(key: key);

//   @override
//   _ScannerPageState createState() => _ScannerPageState();
// }

// class _ScannerPageState extends State<ScannerPage> {
//   String barcode = "";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Barcode Scanner Example'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 child: Text('Scan'),
//                 onPressed: () async {
//                   try {
//                     String barcode = await BarcodeScanner.scan();
//                     setState(() {
//                       this.barcode = barcode;
//                     });
//                   } on PlatformException catch (error) {
//                     if (error.code == BarcodeScanner.CameraAccessDenied) {
//                       setState(() {
//                         this.barcode =
//                             'Izin kamera tidak diizinkan oleh si pengguna';
//                       });
//                     } else {
//                       setState(() {
//                         this.barcode = 'Error: $error';
//                       });
//                     }
//                   }
//                 },
//               ),
//               Text(
//                 'Result: $barcode',
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
