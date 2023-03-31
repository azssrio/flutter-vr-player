import 'package:flutter/material.dart';
import 'package:video_360/video_360.dart';

class VrPlayer extends StatefulWidget {
  final String url;
  const VrPlayer({super.key, required this.url});

  @override
  State<VrPlayer> createState() => _VrPlayerState();
}

class _VrPlayerState extends State<VrPlayer> {
  Video360Controller? controller;

  String durationText = '';
  String totalText = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var statusBar = MediaQuery.of(context).padding.top;

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: width,
              height: height,
              child: Video360View(
                isAutoPlay: true,
                isRepeat: true,
                onVideo360ViewCreated: _onVideo360ViewCreated,
                url: widget.url,
                onPlayInfo: (Video360PlayInfo info) {
                  setState(() {
                    durationText = info.duration.toString();
                    totalText = info.total.toString();
                  });
                },
              ),
            ),
          ),
          Column(
            children: [],
          )
        ],
      ),
    );
  }

  _onVideo360ViewCreated(Video360Controller? controller) {
    this.controller = controller;
  }
}
