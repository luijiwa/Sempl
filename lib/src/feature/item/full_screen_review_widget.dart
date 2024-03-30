import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullScreenPageView extends StatefulWidget {
  final List<String> images;
  final String videoUrl;
  final int index;

  const FullScreenPageView(
      {super.key,
      required this.images,
      required this.videoUrl,
      required this.index});

  @override
  State<FullScreenPageView> createState() => _FullScreenPageViewState();
}

class _FullScreenPageViewState extends State<FullScreenPageView> {
  late PageController _pageController;
  late VideoPlayerController _videoPlayerController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
          ..initialize().then((_) {
            setState(() {});
          });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: widget.images.length + 1,
            itemBuilder: (context, index) {
              if (index < widget.images.length) {
                return Image.asset(widget.images[index]);
              } else {
                return AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController),
                );
              }
            },
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
              if (index == widget.images.length) {
                _videoPlayerController.play();
              }
              if (index != widget.images.length &&
                  _videoPlayerController.value.isPlaying) {
                _videoPlayerController.pause();
              }
            },
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: kToolbarHeight + MediaQuery.of(context).padding.top,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 18,
                      weight: 500,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  centerTitle: true,
                  title: Text(
                    '${_currentPageIndex + 1}/${widget.images.length + 1}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
