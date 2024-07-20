import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:soar_task_app/src/core/extensions/context.dart';
import 'package:soar_task_app/src/core/router/router_names.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/get_character_use_case.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/bloc_enums.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/home_bloc.dart';
import 'package:soar_task_app/src/features/home/presentation/widgets/home_grid_item_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CharactersParams _params;
  bool _requestCalled = false;

  @override
  void initState() {
    _params = CharactersParams(
      offset: 0,
    );
    HomeBloc.get(context).add(
      HomeEvent(
        action: HomeBlocActions.getCharacters,
        charactersParams: _params,
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
                          _params = _params.copyWith(
                            offset: _params.offset + _params.limit,
                          );
                          HomeBloc.get(context).add(
                            HomeEvent(
                              action: HomeBlocActions.getCharacters,
                              charactersParams: _params,
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
