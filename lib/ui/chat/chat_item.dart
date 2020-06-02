import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ChatItem extends StatelessWidget {
  ChatItem(this.title, this.subtitle, this.urlAvatar);

  final String title;
  final String subtitle;
  final String urlAvatar;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        child: CachedNetworkImage(
          imageUrl: urlAvatar,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.sim_card_alert),
     ),
      )
    );
  }
}
