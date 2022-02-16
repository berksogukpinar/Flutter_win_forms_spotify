// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:win_forms_flutter/data/data.dart';

class PlaylistHeader extends StatelessWidget {
  final Playlist playlist;
  const PlaylistHeader({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Image.asset(playlist.imageURL,height: 200,width: 200,fit:BoxFit.cover)),
            const SizedBox(width: 16,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("PLAYLIST",style: Theme.of(context).textTheme.overline!.copyWith(fontSize: 12),),
                const SizedBox(height: 12,),
                Text(playlist.name,style: Theme.of(context).textTheme.headline2,),
                const SizedBox(height: 16,),
                Text(playlist.description,style: Theme.of(context).textTheme.subtitle1,),
                const SizedBox(height: 16,),
                Text("Created by ${playlist.creator} + ${playlist.songs.length} songs,  ${playlist.duration}",style: Theme.of(context).textTheme.subtitle1,),
                
          ],
            ))
          ],
        ),
        const SizedBox(height: 20,),
        _PlaylistButtons(followers:playlist.followers)
      ],
    );
  }
}

class _PlaylistButtons extends StatelessWidget {
final String followers;
  const _PlaylistButtons({
    Key? key,
    required this.followers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 48,vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Theme.of(context).accentColor,
            primary: Theme.of(context).iconTheme.color,
            textStyle: Theme.of(context).textTheme.caption!.copyWith(fontSize: 12,letterSpacing: 2),
          ),
          onPressed: (){},
          child: Text("PLAY"),
          
        ),
        const SizedBox(width: 8,),
        IconButton(icon: Icon(Icons.favorite_border),iconSize: 30,onPressed: (){},),
         IconButton(icon: Icon(Icons.more_horiz),iconSize: 30,onPressed: (){},),
         const Spacer(),
         Text("FOLLOWERS\n$followers",style: Theme.of(context).textTheme.overline!.copyWith(fontSize: 12),textAlign: TextAlign.right,),
         
      ],
    );
  }
}
