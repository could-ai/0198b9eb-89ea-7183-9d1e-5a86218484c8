import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/home_screen.dart';
import 'screens/tasks_screen.dart';
import 'screens/add_content_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/more_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'פלטפורמת ניהול',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // RTL support
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('he', ''), // Hebrew
      ],
      locale: const Locale('he', ''),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    TasksScreen(),
    AddContentScreen(),
    ProjectsScreen(),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // The Directionality widget is automatically handled by MaterialApp's locale.
    return Scaffold(
      appBar: AppBar(
        title: const Text('ניהול אישי'),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ראשי',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task_alt),
            label: 'משימות',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, size: 35),
            label: 'הוספה',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'פרוייקטים',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'עוד',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
