import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/textstyle_const.dart';
import 'package:youtube_clone/data/video_entity.dart';

class VideoCardWidget extends StatelessWidget {
  const VideoCardWidget({super.key, required this.video});

  final VideoEntity video;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(video.thumbnail!),
              Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(video.duration!),
                  ))
            ],
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 23,
                      backgroundImage:
                          AssetImage(video.channel!.profilePicture!),
                    ),
                    const SizedBox(width: 9),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            video.videoTitle!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyleConst.videoTitleStyle,
                          ),
                          Text(
                            "${video.channel!.channelName} . ${video.viewCount}K views . ${video.uploadDate}",
                            style: TextStyleConst.videoInfoStyle,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          _showMenuItem(context);
                        },
                        child: const Icon(Icons.more_vert))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _showMenuItem(BuildContext context) {
    showModalBottomSheet(
        enableDrag: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 70,
                      height: 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _bottomNavigationItem(
                      title: "Play next in queue",
                      iconData: Icons.playlist_play_sharp),
                  const SizedBox(
                    height: 25,
                  ),
                  _bottomNavigationItem(
                      title: "Save to Watch Later",
                      iconData: Icons.watch_later_outlined),
                  const SizedBox(
                    height: 25,
                  ),
                  _bottomNavigationItem(
                      title: "Save to Playlist",
                      iconData: Icons.bookmark_outline),
                  const SizedBox(
                    height: 25,
                  ),
                  _bottomNavigationItem(
                      title: "Download video", iconData: Icons.download),
                  const SizedBox(
                    height: 25,
                  ),
                  _bottomNavigationItem(title: "Share", iconData: Icons.share),
                  const SizedBox(
                    height: 25,
                  ),
                  _bottomNavigationItem(
                      title: "Not interested",
                      iconData: Icons.not_interested_outlined),
                  const SizedBox(
                    height: 25,
                  ),
                  _bottomNavigationItem(
                      title: "Don't recommend channel",
                      iconData: Icons.person_add_disabled_outlined),
                  const SizedBox(
                    height: 25,
                  ),
                  _bottomNavigationItem(
                      title: "Report", iconData: Icons.flag_outlined),
                ],
              ),
            ),
          );
        });
  }

  _bottomNavigationItem({IconData? iconData, String? title}) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "$title",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
