import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String postId;
  final String username;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  const Post({
    required this.description,
    required this.uid,
    required this.postId,
    required this.username,
    required this.datePublished,
    required this.postUrl,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "postId": postId,
        "description": description,
        "datePublished": datePublished,
        "postUrl": postUrl,
        "profImage": profImage,
        "likes": likes,
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
        description: snapshot['description'],
        uid: snapshot['uid'],
        datePublished: snapshot['datePublished'],
        username: snapshot['username'],
        likes: snapshot['likes'],
        postUrl: snapshot['postUrl'],
        profImage: snapshot['profImage'],
        postId: 'postId');
  }
}
