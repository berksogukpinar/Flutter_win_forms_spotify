// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:win_forms_flutter/models/current_track.dart';

class CurrentTrack extends StatelessWidget {
  const CurrentTrack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: double.infinity,
      color: Colors.black87,
      child: Padding(padding: EdgeInsets.all(12),
      child: Row(
        children: [
          _TrackInfo(),
          const Spacer(),
          _PlayerControls(),
          const Spacer(),
          if(MediaQuery.of(context).size.width > 800)_MoreControls()
          

        ],
      ),
      ),
    );
  }
}

class _TrackInfo extends StatelessWidget {
  const _TrackInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;

    if(selected == null) return const SizedBox.shrink();
    return Row(
      children: [
        Image.asset("assets/lofigirl.jpg",height: 60,width: 60,fit: BoxFit.cover,),
        const SizedBox(width: 12,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(selected.title,style: Theme.of(context).textTheme.bodyText1,),
            const SizedBox(height: 4,),
            Text(selected.artist,style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.grey.shade200,fontSize: 12),)
          ],
        ),
        const SizedBox(width: 12,),
        IconButton(icon: Icon(Icons.favorite_border),onPressed: (){},)
      ],
    );
    
  }
}

class _PlayerControls extends StatelessWidget {
  const _PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;

    return Column(
      children: [
        Row(
          children: [
            IconButton(padding: const EdgeInsets.only(),iconSize: 20,icon: Icon(Icons.shuffle),onPressed: (){},),
            IconButton(padding: const EdgeInsets.only(),iconSize: 20,icon: Icon(Icons.skip_previous),onPressed: (){},),
            IconButton(padding: const EdgeInsets.only(),iconSize: 34,icon: Icon(Icons.play_circle_outline),onPressed: (){},),
            IconButton(padding: const EdgeInsets.only(),iconSize: 20,icon: Icon(Icons.skip_next_outlined),onPressed: (){},),
            IconButton(padding: const EdgeInsets.only(),iconSize: 20,icon: Icon(Icons.repeat),onPressed: (){},),
          ],
        ),
        const SizedBox(height: 4,),
        Row(
          children: [
            Text("0:00",style: Theme.of(context).textTheme.caption,),
            const SizedBox(height: 8,),
            Container(height: 5,width: MediaQuery.of(context).size.width * 0.3,decoration: BoxDecoration(color: Colors.grey.shade800,borderRadius: BorderRadius.circular(2.5)),),
            const SizedBox(height: 8,),
            Text(selected?.duration ?? "0:00",style: Theme.of(context).textTheme.caption,)

          ],
        ),
        
      ],
    );
  }
}

class _MoreControls extends StatelessWidget {
  const _MoreControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.devices_outlined),iconSize: 20,),
        Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.volume_up_outlined)),
            Container(height: 5.0, width: 70, decoration: BoxDecoration(color: Colors.grey.shade800,borderRadius: BorderRadius.circular(2.5)),)
          ],
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.fullscreen_outlined),iconSize: 20,),
      ],
    );
  }
}