import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soar_task_app/gen/assets.gen.dart';

class CharacterDetailsBlockView<T> extends StatelessWidget {
  const CharacterDetailsBlockView({
    super.key,
    required this.title,
    required this.listItemImage,
    required this.listItemTitle,
    required this.listItemDetails,
    required this.listLength,
  });

  final String title;
  final String Function(int) listItemImage;
  final String Function(int) listItemTitle;
  final String Function(int) listItemDetails;
  final int listLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        SizedBox(
          height: 10.h,
        ),
        listLength == 0
            ? Center(
                child: Text(
                  "There is no available ${title.toLowerCase()} for this character",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            : ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Card(
                  color: Colors.grey.shade200,
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    // width: 183.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CachedNetworkImage(
                          height: 250.h,
                          width: double.infinity,
                          imageUrl: listItemImage(index),
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Center(
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
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                          ),
                          child: Text(
                            listItemTitle(index),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        if (listItemDetails(index).isNotEmpty)
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                            ),
                            child: Text(
                              listItemDetails(index),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: Colors.grey.shade700,
                                  ),
                            ),
                          ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
                itemCount: listLength,
              ),
      ],
    );
  }
}
