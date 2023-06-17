import 'package:flutter/material.dart';
import 'package:tarea5/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Moments extends StatefulWidget {
  const Moments({Key? key}) : super(key: key);

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  final videos = [
    VideoMoments(
        'https://www.themarysue.com/wp-content/uploads/2022/07/solider-boy-and-homelander-the-boys.jpg?resize=1200%2C676',
        'Rsjo7NQW0-E',
        'Homelander vs. The Butcher and Soldier Boy'),
    VideoMoments(
        'https://s.yimg.com/ny/api/res/1.2/4LdjCwqh2vY7gqhbXKiufQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MA--/https://media.zenfs.com/en/the_hollywood_reporter_217/cf8eda18b2803ea72c5bf1d75a5ed3fa',
        'gm6qQdsxeGQ',
        'The Boys Season 3 Final Scene'),
    VideoMoments(
        'https://fictionhorizon.com/wp-content/uploads/2022/07/FXG3g0pXgAE-rBJ.jpg',
        '5YoyZ_yPPCI',
        'Homelander vs Soldierboy | The Boys Season 3 Final'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Mejores momentos'),
            ),
            body: Column(children: [
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    itemCount: videos.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(videos[index].image),
                        title: Text(videos[index].title),
                        textColor: Colors.grey[800],
                        horizontalTitleGap: 30,
                        subtitle: const Text('The best xdd'),
                        minLeadingWidth: 95,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Video(
                                video: videos[index],
                              ),
                            ),
                          );
                        },
                      );
                    }),
              ),
            ])));
  }
}

class Video extends StatefulWidget {
  final VideoMoments video;

  const Video({required this.video});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.video.videoID,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              widget.video.title,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 25,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Moments()),
              );
            },
            child: const Text('Volver'),
          )
        ],
      )),
    );
  }
}

class VideoMoments {
  String image;
  String videoID;
  String title;

  VideoMoments(this.image, this.videoID, this.title);
}
