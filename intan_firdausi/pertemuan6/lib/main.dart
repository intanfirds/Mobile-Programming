import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Import halaman-halaman yang dibutuhkan
import 'profile_page.dart';
import 'counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const ProfilePage(),
    const CounterPage(),
  ];

  void _navigateToPage(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Tutup drawer setelah memilih menu
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _currentIndex == 0 ? 'Profil Mahasiswa' : 'Counter App',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        // Otomatis menambahkan icon menu untuk drawer
        automaticallyImplyLeading: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Counter',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Drawer Header
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurple.shade400,
                    Colors.purple.shade300,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'My Profile App',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Navigation Menu',
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            // Menu untuk navigasi ke halaman Profile
            ListTile(
              leading: Icon(
                Icons.person,
                color: _currentIndex == 0
                    ? Colors.deepPurple
                    : Colors.grey.shade700,
              ),
              title: Text(
                'Halaman Profil',
                style: GoogleFonts.poppins(
                  fontWeight:
                      _currentIndex == 0 ? FontWeight.bold : FontWeight.normal,
                  color: _currentIndex == 0 ? Colors.deepPurple : Colors.black,
                ),
              ),
              trailing: _currentIndex == 0
                  ? const Icon(Icons.check, color: Colors.deepPurple)
                  : null,
              onTap: () => _navigateToPage(0),
            ),

            // Menu untuk navigasi ke halaman Counter
            ListTile(
              leading: Icon(
                Icons.add_chart,
                color: _currentIndex == 1
                    ? Colors.deepPurple
                    : Colors.grey.shade700,
              ),
              title: Text(
                'Halaman Counter',
                style: GoogleFonts.poppins(
                  fontWeight:
                      _currentIndex == 1 ? FontWeight.bold : FontWeight.normal,
                  color: _currentIndex == 1 ? Colors.deepPurple : Colors.black,
                ),
              ),
              trailing: _currentIndex == 1
                  ? const Icon(Icons.check, color: Colors.deepPurple)
                  : null,
              onTap: () => _navigateToPage(1),
            ),
          ],
        ),
      ),
    );
  }
}
