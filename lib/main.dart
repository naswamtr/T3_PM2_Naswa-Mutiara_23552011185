import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Naswa Mutiara',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'ComicSans'),
        ),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: const Text('Profil Naswa Mutiara'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/awa.jpg'),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Naswa Mutiara',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ComicSans',
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Mahasiswa Universitas Teknologi Bandung',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontFamily: 'ComicSans',
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: const [
                        ListTile(
                          leading: Icon(Icons.badge, color: Colors.indigo),
                          title: Text(
                            'NIM: 23552011185',
                            style: TextStyle(fontFamily: 'ComicSans'),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.email, color: Colors.indigo),
                          title: Text(
                            'naswamutiara0101@gmail.com',
                            style: TextStyle(fontFamily: 'ComicSans'),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.school, color: Colors.indigo),
                          title: Text(
                            'Jurusan Teknik Informatika',
                            style: TextStyle(fontFamily: 'ComicSans'),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.book, color: Colors.indigo),
                          title: Text(
                            'Semester 5',
                            style: TextStyle(fontFamily: 'ComicSans'),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.home, color: Colors.indigo),
                          title: Text(
                            'Kopo, Bandung, Indonesia',
                            style: TextStyle(fontFamily: 'ComicSans'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
