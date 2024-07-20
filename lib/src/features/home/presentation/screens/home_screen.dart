import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:soar_task_app/src/core/extensions/context.dart';
import 'package:soar_task_app/src/core/router/router_names.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/character_use_case_params/characters_use_case_params.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/bloc_enums.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/home_bloc.dart';
import 'package:soar_task_app/src/features/home/presentation/widgets/home_grid_item_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _requestCalled = false;

  @override
  void initState() {
    final bloc = HomeBloc.get(context);
    late CharactersUseCaseParams params;
    if (bloc.state.params == null) {
      params = CharactersUseCaseParams(
        offset: 0,
      );
    } else {
      params = bloc.state.params!;
    }
    bloc.add(
      HomeEvent(
        action: HomeBlocActions.getCharacters,
        charactersParams: params,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
        ),
        elevation: 3,
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.state == HomeBlocState.loading) {
            if (state.action == HomeBlocActions.getCharacters) {
              _requestCalled = false;
            } else if (state.action == HomeBlocActions.characterDetails) {
              context.goTo(RouterNames.rCharacterDetails);
            }
          }
        },
        buildWhen: (context, state) =>
            state.action == HomeBlocActions.getCharacters,
        builder: (context, state) {
          return state.state == HomeBlocState.loading &&
                  state.charactersResponse == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.charactersResponse == null
                  ? const SizedBox.shrink()
                  : NotificationListener<ScrollNotification>(
                      onNotification: (scrollNotification) {
                        if (scrollNotification.metrics.pixels ==
                                scrollNotification.metrics.maxScrollExtent &&
                            state.state != HomeBlocState.loading &&
                            !_requestCalled) {
                          _requestCalled = true;
                          final params = state.params!.copyWith(
                            offset: state.params!.offset + state.params!.limit,
                          );
                          HomeBloc.get(context).add(
                            HomeEvent(
                              action: HomeBlocActions.getCharacters,
                              charactersParams: params,
                            ),
                          );
                          return true;
                        }
                        return false;
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: MasonryGridView.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10.r,
                              crossAxisSpacing: 10.r,
                              itemBuilder: (context, index) => HomeGridItemView(
                                character:
                                    state.charactersResponse!.results[index],
                                onTap: () {
                                  HomeBloc.get(context).add(
                                    HomeEvent(
                                      action: HomeBlocActions.characterDetails,
                                      character: state
                                          .charactersResponse!.results[index],
                                    ),
                                  );
                                },
                              ),
                              itemCount:
                                  state.charactersResponse!.results.length,
                            ),
                          ),
                          if (state.state == HomeBlocState.loading)
                            LinearProgressIndicator(
                              minHeight: 5.h,
                            )
                        ],
                      ),
                    );
        },
      ),
    );
  }
}
