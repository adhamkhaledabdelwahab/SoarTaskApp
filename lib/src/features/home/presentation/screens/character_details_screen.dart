import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soar_task_app/gen/assets.gen.dart';
import 'package:soar_task_app/src/core/extensions/context.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/bloc_enums.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/home_bloc.dart';
import 'package:soar_task_app/src/features/home/presentation/widgets/character_details_block_view.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.black38,
          ),
          onPressed: context.back,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: state.characterDetails!.id,
                  child: CachedNetworkImage(
                    height: 400.h,
                    width: double.infinity,
                    imageUrl: state.characterDetails!.thumbnail.imageUrl,
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
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.characterDetails!.name,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      if (state.characterDetails!.description.isNotEmpty) ...[
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          state.characterDetails!.description,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Colors.grey.shade800,
                                  ),
                        ),
                      ],
                      SizedBox(
                        height: 10.h,
                      ),
                      const Divider(),
                      SizedBox(
                        height: 10.h,
                      ),
                      if (state.state == HomeBlocState.loading)
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                      if (state.comicsResponse != null) ...[
                        CharacterDetailsBlockView(
                          title: "Comics",
                          listItemImage: (index) => state.comicsResponse!
                              .results[index].thumbnail.imageUrl,
                          listItemDetails: (index) =>
                              state.comicsResponse!.results[index].description,
                          listItemTitle: (index) =>
                              state.comicsResponse!.results[index].title,
                          listLength: state.comicsResponse!.results.length,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Divider(),
                      ],
                      SizedBox(
                        height: 10.h,
                      ),
                      if (state.eventsResponse != null) ...[
                        CharacterDetailsBlockView(
                          title: "Events",
                          listItemImage: (index) => state.eventsResponse!
                              .results[index].thumbnail.imageUrl,
                          listItemDetails: (index) =>
                              state.eventsResponse!.results[index].description,
                          listItemTitle: (index) =>
                              state.eventsResponse!.results[index].title,
                          listLength: state.eventsResponse!.results.length,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Divider(),
                      ],
                      SizedBox(
                        height: 10.h,
                      ),
                      if (state.storiesResponse != null) ...[
                        CharacterDetailsBlockView(
                          title: "Stories",
                          listItemImage: (index) => state.storiesResponse!
                              .results[index].thumbnail.imageUrl,
                          listItemDetails: (index) =>
                              state.storiesResponse!.results[index].description,
                          listItemTitle: (index) =>
                              state.storiesResponse!.results[index].title,
                          listLength: state.storiesResponse!.results.length,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Divider(),
                      ],
                      SizedBox(
                        height: 10.h,
                      ),
                      if (state.seriesResponse != null) ...[
                        CharacterDetailsBlockView(
                          title: "Series",
                          listItemImage: (index) => state.seriesResponse!
                              .results[index].thumbnail.imageUrl,
                          listItemDetails: (index) =>
                              state.seriesResponse!.results[index].description,
                          listItemTitle: (index) =>
                              state.seriesResponse!.results[index].title,
                          listLength: state.seriesResponse!.results.length,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Divider(),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
