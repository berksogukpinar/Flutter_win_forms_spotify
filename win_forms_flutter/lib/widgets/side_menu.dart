// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';
import 'package:win_forms_flutter/data/data.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/spotify_logo.png',height: 120,filterQuality: FilterQuality.high,),
              ),
            ],
          ),
          _SideMenuIconTab(
            title: "Home",
            iconData: Icons.home,
            onTap: (){

            },
          ),
          _SideMenuIconTab(
            title: "Search",
            iconData: Icons.search,
            onTap: (){
              
            },
          ),
          _SideMenuIconTab(
            title: "Radio",
            iconData: Icons.audiotrack,
            onTap: (){
              
            },
          ),
          const SizedBox(height: 12,),
          _LibraryPlaylist(),
        ],
      ),
    );
  }
}

class _SideMenuIconTab extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;
  const _SideMenuIconTab({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData,color: Theme.of(context).iconTheme.color,size: 28,),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}
class _LibraryPlaylist extends StatefulWidget {
  _LibraryPlaylist({Key? key}) : super(key: key);

  @override
  State<_LibraryPlaylist> createState() => __LibraryPlaylistState();
}

class __LibraryPlaylistState extends State<_LibraryPlaylist> {
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
    return Expanded(
      child: Scrollbar(
        isAlwaysShown: true,
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
          padding: const EdgeInsets.symmetric(vertical: 12),
          physics: const ClampingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                  child: Text("YOUR LIBRARY",style: Theme.of(context).textTheme.headline4,overflow: TextOverflow.ellipsis,),
                ),
                ...yourLibrary.map((e) => ListTile(
                  dense: true,
                  title: Text(e,style: Theme.of(context).textTheme.bodyText2,overflow: TextOverflow.ellipsis,),
                  onTap: (){
      
                  },
                )).toList(),
              ],
            ),
            const SizedBox(height: 24,),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                  child: Text("PLAYLISTS",style: Theme.of(context).textTheme.headline4,overflow: TextOverflow.ellipsis,),
                ),
                ...playlists.map((e) => ListTile(
                  dense: true,
                  title: Text(e,style: Theme.of(context).textTheme.bodyText2,overflow: TextOverflow.ellipsis,),
                  onTap: (){
      
                  },
                )).toList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}