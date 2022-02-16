// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:win_forms_flutter/data/data.dart';
import 'package:win_forms_flutter/widgets/playlist_header.dart';
import 'package:win_forms_flutter/widgets/tracks_list.dart';

class PlaylistScreen extends StatefulWidget {
  final Playlist playlist;
  PlaylistScreen({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  ScrollController? _scrollController;
  @override
  void initState() {
    
    super.initState();
    _scrollController = ScrollController();
  }
  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 140,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                customBorder: const CircleBorder(),
                onTap: (){},
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.chevron_left,size: 28,),
                ),
              ),
              const SizedBox(width: 16,),
              InkWell(
                customBorder: const CircleBorder(),
                onTap: (){},
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.chevron_right,size: 28,),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton.icon(style: TextButton.styleFrom(primary: Theme.of(context).iconTheme.color),onPressed: (){}, icon: Icon(Icons.account_circle_outlined,size: 30,), label: Text("Berk Soğukpınar"),
          
          ),
          const SizedBox(width: 8),
          IconButton(padding: const EdgeInsets.only(),icon: Icon(Icons.keyboard_arrow_down), onPressed: (){}),
          const SizedBox(width: 20),

        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [
          const Color(0xFFAF1018),
          Theme.of(context).backgroundColor,
        ],
        stops: [0,0.3],
        )),
        child: Scrollbar(
          isAlwaysShown: true,
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
            children: [
              PlaylistHeader(playlist:widget.playlist),
              TracksList(tracks:widget.playlist.songs),
            ],
          ),
        ),
      ),
    );
  }
}