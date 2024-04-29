import 'package:youtube_clone/constants/asset_const.dart';
import 'package:youtube_clone/data/channel_entity.dart';

class VideoEntity {
  String? thumbnail;
  int? viewCount;
  String? uploadDate;
  String? videoTitle;
  ChannelEntity? channel;
  String? duration;

  VideoEntity(
      {this.thumbnail,
      this.videoTitle,
      this.uploadDate,
      this.channel,
      this.duration,
      this.viewCount});

  static List<VideoEntity> videos = [
    VideoEntity(
      thumbnail: AssetConst.thumbnail0,
      viewCount: 100,
      uploadDate: '1 day ago',
      videoTitle: 'Introduction to Flutter',
      channel: ChannelEntity.channels[0],
      duration: "13:41"
    ),
    VideoEntity(
      thumbnail: AssetConst.thumbnail1,
      viewCount: 500,
      uploadDate: '2 hours ago',
      videoTitle: 'Delicious Pasta Recipe',
      channel: ChannelEntity.channels[1],
      duration: "15:42"
    ),
    VideoEntity(
      thumbnail: AssetConst.thumbnail2,
      viewCount: 200,
      uploadDate: '5 days ago',
      videoTitle: 'Exploring Bali',
      channel: ChannelEntity.channels[2],
      duration: "16:00"
    ),
    VideoEntity(
      thumbnail: AssetConst.thumbnail3,
      viewCount: 300,
      uploadDate: '1 month ago',
      videoTitle: '5-Minute Abs Workout',
      channel: ChannelEntity.channels[3],
      duration: "55:00"
    ),
    VideoEntity(
      thumbnail: AssetConst.thumbnail4,
      viewCount: 700,
      uploadDate: '10 years ago',
      videoTitle: 'Top Hits of 2024',
      channel: ChannelEntity.channels[4],
      duration: "1:23:00"
    ),
  ];
}
