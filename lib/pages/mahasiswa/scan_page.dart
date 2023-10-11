// import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

// import '../../common/components/buttons.dart';
// import '../../common/components/custom_scaffold.dart';
// import '../../common/constants/colors.dart';

// class ScanPage extends StatefulWidget {
//   const ScanPage({super.key});

//   @override
//   State<ScanPage> createState() => _ScanPageState();
// }

// class _ScanPageState extends State<ScanPage> {
//   void onDetect() {
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           backgroundColor: ColorName.primary,
//           title: const Center(
//             child: Text(
//               "Absen Sukses",
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: ColorName.white,
//               ),
//             ),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 "07:58",
//                 style: TextStyle(
//                   fontSize: 64,
//                   fontWeight: FontWeight.w700,
//                   color: ColorName.white,
//                 ),
//               ),
//               const SizedBox(height: 40.0),
//               ElevatedButton(
//                 style:
//                     ElevatedButton.styleFrom(backgroundColor: ColorName.white),
//                 onPressed: () {
//                   Navigator.pop(context);
//                   Navigator.pop(context);
//                 },
//                 child: const Text(
//                   'Done',
//                   style: TextStyle(
//                     color: ColorName.primary,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//   @override
//   Widget build(BuildContext context) {
    

//     Future.delayed(const Duration(seconds: 3), () => onDetect());

//     return CustomScaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height - 120.0,
//             padding: const EdgeInsets.all(50.0),
//             margin: const EdgeInsets.only(bottom: 60.0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: MobileScanner(
//               fit: BoxFit.contain,
//               controller: MobileScannerController(
//                 detectionSpeed: DetectionSpeed.noDuplicates,
//               ),
//               onDetect: (capture) {
//                 final List<Barcode> barcodes = capture.barcodes;
//                 for (final Barcode barcode in barcodes) {
//                   debugPrint(barcode.displayValue);
//                 }
//               },
//             ),
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height - 100.0,
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding: const EdgeInsets.all(30.0),
//                 child: Button.filled(
//                   width: 200.0,
//                   onPressed: () {},
//                   label: 'Scanning...',
//                   icon: const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: CircularProgressIndicator(
//                       color: ColorName.white,
//                     ),
//                   ),
//                   borderRadius: 50.0,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }