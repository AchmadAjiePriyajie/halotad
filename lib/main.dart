// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: KonsultasiScreen(),
//     );
//   }
// }

// class KonsultasiScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(children: [
//         Container(
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage('images/bg.png'), fit: BoxFit.fill)),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Positioned(
//                     top: 0,
//                     child: Container(
//                       width: 200,
//                       height: 200,
//                       decoration: BoxDecoration(
//                         color: Colors.greenAccent.shade100,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ),
//                   CircleAvatar(
//                     radius: 150,
//                     backgroundImage: AssetImage(
//                         'images/adi.jpg'), // Ganti dengan URL gambar Anda
//                   ),
//                 ],
//               ),
//               SizedBox(height: 24),
//               Text(
//                 'Konsultasi Dengan Ahli',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Dapatkan bimbingan agama dari ustadz dan ahli agama yang telah dipercaya banyak orang. Konsultasi langsung kapan saja.',
//                 style: TextStyle(fontSize: 16, color: Colors.grey),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 32),
//               ElevatedButton(
//                 onPressed: () {
//                   // Aksi saat tombol ditekan
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green, // Warna tombol
//                   padding: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(24),
//                   ),
//                 ),
//                 child: Text(
//                   'Get Started',
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: 16),
//               TextButton(
//                 onPressed: () {
//                   // Aksi saat tombol Skip ditekan
//                 },
//                 child: Text(
//                   'Skip',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Aksi saat tombol kembali ditekan
          },
        ),
        title: Text("Profile", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
              padding: EdgeInsets.only(top: 24, bottom: 36),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                            'lib/bg.png'), // Ganti dengan path gambar Anda
                      ),
                      Positioned(
                        bottom: 0,
                        right: 4,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey[200],
                          child: Icon(Icons.camera_alt, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "PERBARUI PROFILE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Informasi Pribadi",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  _buildTextField(label: "Nama", initialValue: "Muhammad"),
                  _buildTextField(
                      label: "Telepon", initialValue: "+6280000000000"),
                  _buildTextField(
                      label: "Date of birth", initialValue: "DD MM YYYY"),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi saat tombol Konfirmasi ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Center(
                      child: Text("Konfirmasi",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi saat tombol Keluar ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Center(
                      child: Text("Keluar",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required String label, required String initialValue}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 12, color: Colors.green),
          suffixIcon: Icon(Icons.edit, color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.green),
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
        ),
        controller: TextEditingController(text: initialValue),
        readOnly: true,
      ),
    );
  }
}
