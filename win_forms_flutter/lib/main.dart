// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_function_type_syntax_for_parameters, non_constant_identifier_names, deprecated_member_use
import 'dart:io';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:win_forms_flutter/data/data.dart';
import 'package:win_forms_flutter/models/current_track.dart';
import 'package:win_forms_flutter/screens/playlist_screen.dart';
import 'package:win_forms_flutter/widgets/current_truckk.dart';
import 'package:win_forms_flutter/widgets/side_menu.dart';
import 'package:provider/provider.dart'; 



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(!kIsWeb && (Platform.isMacOS || Platform.isLinux || Platform.isWindows)){
  await DesktopWindow.setMinWindowSize(const Size(600,800));
  }
  runApp(ChangeNotifierProvider(create:(context)=>CurrentTrackModel(),child: WinApp()));
}

class WinApp extends StatelessWidget {
  const WinApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: "Windows Example",
  theme: ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(backgroundColor: Colors.black),
    scaffoldBackgroundColor: const Color(0xFF121212),
    backgroundColor: Color(0xFF121212),
    primaryColor: Colors.black,
    accentColor: Color(0xFF1DB954),
    iconTheme: IconThemeData().copyWith(color: Colors.white),

    // Define the default font family.
    fontFamily: 'Montserrat',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      headline2: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),
      headline4: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500,letterSpacing: 2),
      bodyText1: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w600,letterSpacing: 1),
      bodyText2: TextStyle(color: Colors.grey,letterSpacing: 1)
    ),
  ),
      home: WinAppPage(),
      
    );
  }
}

class WinAppPage extends StatelessWidget {
  const WinAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              if(MediaQuery.of(context).size.width > 800)SideMenu(),
              Expanded(child: PlaylistScreen(playlist: lofihiphopPlaylist,)),
            ],
          ),
        ),
        CurrentTrack(),
      ],
    ),
    );
  }
}


