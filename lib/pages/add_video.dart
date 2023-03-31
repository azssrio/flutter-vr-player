import 'package:flutter/material.dart';
import 'package:vr_player/pages/vr_player_page.dart';
import 'package:vr_player/route/route.dart';

class AddVideo extends StatefulWidget {
  const AddVideo({super.key});

  @override
  State<AddVideo> createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  TextEditingController videoUrlController = TextEditingController();
  final video1 = 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8';
  final video2 =
      'https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.mp4/.m3u8';
  final video3 =
      'https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8';
  final video4 =
      'https://moctobpltc-i.akamaihd.net/hls/live/571329/eight/playlist.m3u8';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VR Video'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // padding: const EdgeInsets.all(15),

            children: [
              // Row(
              //   children: [
              //     ElevatedButton(
              //       onPressed: videoBtn1,
              //       child: const Padding(
              //           padding: EdgeInsets.all(5), child: Text('Video-1')),
              //     ),
              //     const SizedBox(width: 5),
              //     ElevatedButton(
              //       onPressed: videoBtn2,
              //       child: const Padding(
              //           padding: EdgeInsets.all(5), child: Text('Video-2')),
              //     ),
              //     const SizedBox(width: 5),
              //     ElevatedButton(
              //       onPressed: videoBtn3,
              //       child: const Padding(
              //           padding: EdgeInsets.all(5), child: Text('Video-3')),
              //     ),
              //     // const SizedBox(width: 5),
              //     // ElevatedButton(
              //     //   onPressed: videoBtn4,
              //     //   child: const Padding(
              //     //       padding: EdgeInsets.all(5), child: Text('Video-4')),
              //     // ),
              //   ],
              // ),
              // // Row(
              // //   children: [
              // //     ElevatedButton(
              // //       onPressed: videoBtn3,
              // //       child: Card(
              // //         semanticContainer: true,
              // //         clipBehavior: Clip.antiAliasWithSaveLayer,
              // //         child: Image.asset(
              // //           'assets/images/play.png',
              // //           fit: BoxFit.cover,
              // //         ),
              // //         shape: RoundedRectangleBorder(
              // //           borderRadius: BorderRadius.circular(10.0),
              // //         ),
              // //         elevation: 5,
              // //         margin: EdgeInsets.all(10),
              // //       ),
              // //     ),
              // //   ],
              // // )

              Column(
                children: [
                  Card(
                    // ignore: sort_child_properties_last
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VrPlayer(
                                    url: video1,
                                  )),
                        );
                      },
                      child: SizedBox(
                        // width: 300.0,
                        // height: 300.0,
                        child: Image.asset(
                          'assets/images/vide01.jpg',
                          // height: 5,
                          // width: 5,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                    // elevation: 3,
                    // margin: EdgeInsets.all(10),
                  ),
                  const SizedBox(height: 5),
                  Card(
                    // ignore: sort_child_properties_last
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VrPlayer(
                                    url: video2,
                                  )),
                        );
                      },
                      child: SizedBox(
                        // width: 300.0,
                        // height: 300.0,
                        child: Image.asset(
                          'assets/images/vide02.jpg',
                          // height: 5,
                          // width: 5,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                    // elevation: 3,
                    // margin: EdgeInsets.all(10),
                  ),
                  const SizedBox(height: 5),
                  Card(
                    // ignore: sort_child_properties_last
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VrPlayer(
                                    url: video3,
                                  )),
                        );
                      },
                      child: SizedBox(
                        // width: 300.0,
                        // height: 300.0,
                        child: Image.asset(
                          'assets/images/vide03.jpg',
                          // height: 5,
                          // width: 5,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                    // elevation: 3,
                    // margin: EdgeInsets.all(10),
                  ),
                ],
              ),

              // Card(
              //   margin: const EdgeInsets.all(20),
              //   child: SizedBox(
              //     // width: 250,
              //     height: 200,
              //     child: ListTile(
              //       leading: Image.asset(
              //         'assets/images/play.png',
              //         fit: BoxFit.cover,
              //       ),
              //       title: const Text('Demo Title'),
              //       subtitle: const Text('This is a simple card in Flutter.'),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> pushVideo(url) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => VrPlayer(
                url: url,
              )),
    );
  }

  Future<void> videoBtn1() async {
    await pushVideo(video1);
  }

  Future<void> videoBtn2() async {
    await pushVideo(video2);
  }

  Future<void> videoBtn3() async {
    await pushVideo(video3);
  }

  Future<void> videoBtn4() async {
    await pushVideo(video4);
  }

  // Future<void> submitVideo() async {
  //   // print(videoUrlController.text);
  //   if (videoUrlController.text != '') {
  //     await pushVideo(videoUrlController.text);
  //   }
  // }
}
