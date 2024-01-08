import 'package:flutter/material.dart';
// import 'package:mintodo_flutter/counter_model.dart';
import 'package:mintodo_flutter/models/note_database.dart';
import 'package:mintodo_flutter/pages/notes_page.dart';
import 'package:mintodo_flutter/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async{
  // initialize note db 
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();

  runApp(
    // ChangeNotifierProvider(
    //   create: (context)=> NoteDatabase(),
    //   // create: (context) => CounterModel(),
    //   child: const MainApp(),
    // ),
    MultiProvider(
      providers: [
        // NNote provider
        ChangeNotifierProvider(create: (context) => NoteDatabase()),
        // Theme provider 
        ChangeNotifierProvider(create: (context) => ThemeProvider())
      ],
      child: const MainApp()
      )
    );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NotesPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      // home: MyHomePage(title: "counter test"),
    );
  }
}

