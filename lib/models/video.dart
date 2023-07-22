// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class Video {
  String username;
  String uid;
  String id;
  List likes;
  int commentCount;
  int shareCount;
  String songName;
  String caption;
  String videoUrl;
  String thumbnail;
  String profilePhoto;

  Video({
    required this.username,
    required this.uid,
    required this.id,
    required this.likes,
    required this.commentCount,
    required this.shareCount,
    required this.songName,
    required this.caption,
    required this.videoUrl,
    required this.thumbnail,
    required this.profilePhoto,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        'id': id,
        'likes': likes,
        'commentcount': commentCount,
        'sharecount': shareCount,
        'songName': songName,
        'caption': caption,
        'videourl': videoUrl,
        'thumbnailsurl': thumbnail,
        'profilephoto': profilePhoto,
      };

  static Video fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Video(
        username: snapshot['username'],
        uid: snapshot['uid'],
        id: snapshot['id'],
        likes: snapshot['likes'],
        commentCount: snapshot['commentCount'],
        shareCount: snapshot['shareCount'],
        songName: snapshot['songname'],
        caption: snapshot['caption'],
        videoUrl: snapshot['videoUrl'],
        thumbnail: snapshot['thumbnail'],
        profilePhoto: snapshot['profilePhoto']);
  }
}