import 'package:flutter/material.dart';
import 'package:movie_preview/commons/styles.dart';
import 'package:movie_preview/models/plain/media.dart';
import 'package:movie_preview/ui/components/media_cover.dart';
import 'package:provider/provider.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key,required this.media,required this.label}) : super(key: key);

  final Shows media;
  final String label;

  @override
  Widget build(BuildContext context) {
    String heroTag = "${media.title} ${label.toLowerCase()}";
    const double _mediaHeight = 16 * 17;
    const double _mediaWidth = 9 * 20;
    final show = Provider.of<Shows>(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.only(bottom: kPadding),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('SHOW TITLE: '),
                Expanded(child: Text(show.title ?? '',maxLines: 2,overflow: TextOverflow.ellipsis,)),
              ],
            ),
          ),
           const SizedBox(height: 30,),
           Center(
             child: Hero(
               tag:heroTag,
               child: SizedBox(
                 height: _mediaHeight,
                   child: MediaCover(width: _mediaWidth, media: media)),
             ),
           ),
        ],
      ),
    );
  }
}
