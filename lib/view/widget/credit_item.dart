import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_list_bloc/models/credits_model.dart';

class CreditItem extends StatelessWidget {
  const CreditItem({Key? key, required this.cast}) : super(key: key);

  final CastModel cast;

  @override
  Widget build(BuildContext context) {
    final isImage = cast.profilePath != null;

    return Container(
      width: 100,
      padding: EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: isImage
                ? NetworkImage(
                    '${env['IMAGE_URI']!}${cast.profilePath}',
                  )
                : null,
            radius: 40,
            child: !isImage
                ? Icon(
                    Icons.account_circle,
                    size: 30,
                    color: Colors.white,
                  )
                : null,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              '${cast.name}',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
