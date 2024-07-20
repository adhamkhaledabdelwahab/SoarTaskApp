import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soar_task_app/src/core/extensions/context.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/bloc_enums.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/home_bloc.dart';

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
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
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
                      if (state.state == HomeBlocState.loading)
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                      if (state.comicsResponse != null) ...[
                        Text(
                          "Comics",
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Wrap(
                          spacing: 5.r,
                          runSpacing: 5.r,
                          children: List.generate(
                            state.comicsResponse!.results.length,
                            (index) => Card(
                              color: Colors.grey.shade200,
                              clipBehavior: Clip.antiAlias,
                              child: SizedBox(
                                width: 183.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CachedNetworkImage(
                                      height: 200.h,
                                      width: double.infinity,
                                      imageUrl: state.comicsResponse!
                                          .results[index].thumbnail.imageUrl,
                                      progressIndicatorBuilder:
                                          (context, url, downloadProgress) =>
                                              Center(
                                        child: CircularProgressIndicator(
                                          value: downloadProgress.progress,
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
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
                                        state.comicsResponse!.results[index]
                                            .title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    if (state.comicsResponse!.results[index]
                                        .description.isNotEmpty)
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                        ),
                                        child: Text(
                                          state.comicsResponse!.results[index]
                                              .description,
                                          maxLines: 2,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
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
                            ),
                          ),
                        )
                      ],
                      SizedBox(
                        height: 10.h,
                      ),
                      if (state.eventsResponse != null) ...[
                        Text(
                          "Events",
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Wrap(
                          spacing: 5.r,
                          runSpacing: 5.r,
                          children: List.generate(
                            state.eventsResponse!.results.length,
                            (index) => Card(
                              color: Colors.grey.shade200,
                              clipBehavior: Clip.antiAlias,
                              child: SizedBox(
                                width: 183.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CachedNetworkImage(
                                      height: 200.h,
                                      width: double.infinity,
                                      imageUrl: state.eventsResponse!
                                          .results[index].thumbnail.imageUrl,
                                      progressIndicatorBuilder:
                                          (context, url, downloadProgress) =>
                                              Center(
                                        child: CircularProgressIndicator(
                                          value: downloadProgress.progress,
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
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
                                        state.eventsResponse!.results[index]
                                            .title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    if (state.eventsResponse!.results[index]
                                        .description.isNotEmpty)
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                        ),
                                        child: Text(
                                          state.eventsResponse!.results[index]
                                              .description,
                                          maxLines: 2,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
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
                            ),
                          ),
                        )
                      ],
                      SizedBox(
                        height: 10.h,
                      ),
                      if (state.storiesResponse != null) ...[
                        Text(
                          "Stories",
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Wrap(
                          spacing: 5.r,
                          runSpacing: 5.r,
                          children: List.generate(
                            state.storiesResponse!.results.length,
                            (index) => Card(
                              color: Colors.grey.shade200,
                              clipBehavior: Clip.antiAlias,
                              child: SizedBox(
                                width: 183.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CachedNetworkImage(
                                      height: 200.h,
                                      width: double.infinity,
                                      imageUrl: state.storiesResponse!
                                          .results[index].thumbnail.imageUrl,
                                      progressIndicatorBuilder:
                                          (context, url, downloadProgress) =>
                                              Center(
                                        child: CircularProgressIndicator(
                                          value: downloadProgress.progress,
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
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
                                        state.storiesResponse!.results[index]
                                            .title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    if (state.storiesResponse!.results[index]
                                        .description.isNotEmpty)
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                        ),
                                        child: Text(
                                          state.storiesResponse!.results[index]
                                              .description,
                                          maxLines: 2,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
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
                            ),
                          ),
                        )
                      ],
                      SizedBox(
                        height: 10.h,
                      ),
                      if (state.seriesResponse != null) ...[
                        Text(
                          "Series",
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Wrap(
                          spacing: 5.r,
                          runSpacing: 5.r,
                          children: List.generate(
                            state.seriesResponse!.results.length,
                            (index) => Card(
                              color: Colors.grey.shade200,
                              clipBehavior: Clip.antiAlias,
                              child: SizedBox(
                                width: 183.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CachedNetworkImage(
                                      height: 200.h,
                                      width: double.infinity,
                                      imageUrl: state.seriesResponse!
                                          .results[index].thumbnail.imageUrl,
                                      progressIndicatorBuilder:
                                          (context, url, downloadProgress) =>
                                              Center(
                                        child: CircularProgressIndicator(
                                          value: downloadProgress.progress,
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
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
                                        state.seriesResponse!.results[index]
                                            .title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    if (state.seriesResponse!.results[index]
                                        .description.isNotEmpty)
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                        ),
                                        child: Text(
                                          state.seriesResponse!.results[index]
                                              .description,
                                          maxLines: 2,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
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
                            ),
                          ),
                        )
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
