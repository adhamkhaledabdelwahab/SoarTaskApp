import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soar_task_app/gen/assets.gen.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';

class HomeGridItemView extends StatelessWidget {
  const HomeGridItemView({
    super.key,
    required this.character,
    required this.onTap,
  });

  final CharacterEntity character;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.grey.shade200,
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: character.id,
              child: CachedNetworkImage(
                height: 200.h,
                width: double.infinity,
                imageUrl: character.thumbnail.imageUrl,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
                ),
                errorWidget: (context, url, error) => Image.asset(
                  Assets.images.imgMarvelEmpty.path,
                  fit: BoxFit.fill,
                ),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
              ),
              child: Text(
                character.name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            if (character.description.isNotEmpty)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: Text(
                  character.description,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.grey.shade700,
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
              ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
