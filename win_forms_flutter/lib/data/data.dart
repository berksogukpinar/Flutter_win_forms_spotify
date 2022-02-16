const yourLibrary = [
  'Made For You',
  'Recently Played',
  'Liked Songs',
  'Albums',
  'Artists',
  'Podcasts',
];

const playlists = [
  'Today\'s Top Hits',
  'Discover Weekly',
  'Release Radar',
  'Chill',
  'Background',
  'lofi hip hop music - beats to relax/study to',
  'Vibes Right Now',
  'Time Capsule',
  'On Repeat',
  'Summer Rewind',
  'Dank Doggo Tunes',
  'Sleepy Doge',
];

class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
  });
}

const _lofihiphopMusic = [
  Song(
    id: '0',
    title: 'Aynen Öyle',
    artist: 'Lvbel C5',
    album: '1 Am. Study Session',
    duration: '2:33',
  ),
  Song(
    id: '1',
    title: '10 NUMARA',
    artist: 'Lvbel C5',
    album: 'One Day It\'s Over',
    duration: '1:58',
  ),
  Song(
    id: '2',
    title: 'PAPARAZZI',
    artist: 'UZI',
    album: 'Silent River',
    duration: '2:44',
  ),
  Song(
    id: '3',
    title: 'Call You Soon',
    artist: 'Louk, Glimlip',
    album: 'Can We Talk',
    duration: '2:35',
  ),
  Song(
    id: '4',
    title: 'Let Me Down Slowly',
    artist: 'Alec Benjamin',
    album: 'Narrated For You',
    duration: '2:49',
  ),
  Song(
    id: '5',
    title: 'ıslak kum',
    artist: 'Contra',
    album: 'Single',
    duration: '3:06',
  ),
  Song(
    id: '6',
    title: 'GÜNEŞ',
    artist: 'Ati242, Şehinşah',
    album: 'DIPSOMANIA',
    duration: '3:13',
  ),
  Song(
    id: '7',
    title: 'Makina',
    artist: 'UZI',
    album: 'Kan',
    duration: '3:31',
  ),
  Song(
    id: '8',
    title: 'Hourglass',
    artist: 'Thaehan',
    album: 'Hourglass',
    duration: '1:43',
  ),
  Song(
    id: '9',
    title: 'After Sunset',
    artist: 'Project AER, WYS',
    album: '3 Am. Study Session',
    duration: '2:41',
  ),
  Song(
    id: '10',
    title: 'Child',
    artist: 'Ambulo',
    album: 'Polar',
    duration: '2:12',
  ),
  Song(
    id: '11',
    title: 'Arizona Zero',
    artist: 'WYS, Sweet Medicine',
    album: 'Evermore',
    duration: '2:31',
  ),
];

class Playlist {
  final String id;
  final String name;
  final String imageURL;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Song> songs;

  const Playlist({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.description,
    required this.creator,
    required this.duration,
    required this.followers,
    required this.songs,
  });
}

const lofihiphopPlaylist = Playlist(
  id: '5-playlist',
  name: 'lofi hip hop music - beats to relax/study to',
  imageURL: 'assets/lofigirl.jpg',
  description:
      'A daily selection of chill beats - perfect to help you relax & study 📚',
  creator: 'Lofi Girl',
  duration: '28 min',
  followers: '5,351,685',
  songs: _lofihiphopMusic,
);
