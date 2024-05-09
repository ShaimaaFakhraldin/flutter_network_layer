import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_network_layer/presentation/shared/my_clipper.dart';

import '../../../domain/usecase/get_all_characters.dart';
import '../../shared/app_colors.dart';
import '../../shared/character_list_item_loading.dart';
import '../../shared/item_list_animation.dart';
import '../cubit/character_page_cubit.dart';

// -----------------------------------------------------------------------------
// Page
// -----------------------------------------------------------------------------
class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text(
            "",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: BlocProvider(
          create: (_) => CharacterPageCubit(
            getAllCharacters: context.read<GetAllCountries>(),
          )..fetchNextPage(),
          child: const CharacterView(),
        ));
  }
}

// -----------------------------------------------------------------------------
// View
// -----------------------------------------------------------------------------
class CharacterView extends StatelessWidget {
  const CharacterView({super.key});

  @override
  Widget build(BuildContext context) {
    final status = context.select((CharacterPageCubit c) => c.state.status);
    final hasEnded =
        context.select((CharacterPageCubit b) => b.state.hasReachedEnd);
    return Stack(
      children: <Widget>[
        Transform.translate(
            offset: Offset(0.0, MediaQuery.of(context).size.height * 0.1050),
            child: status == CharacterPageStatus.initial || hasEnded
                ? const Center(child: CircularProgressIndicator())
                : const _Content()),
        Transform.translate(
          offset: const Offset(0.0, -56.0),
          child: Container(
            child: ClipPath(
              clipper: MyClipper(),
              child: Stack(
                children: [
                  Image.network(
                    "https://icapps.com/uploads/site/a-good-developer-is-a-lazy-developer-node-js-tips-amp-tricks/_1200x630_crop_center-center_82_none/Flutter_LinkedIn_4.png?mtime=1614692836",
                    fit: BoxFit.cover,
                  ),
                  Opacity(
                    opacity: 0.2,
                    child: Container(color: ItemsColors[0]),
                  ),
                  Transform.translate(
                      offset: const Offset(0.0, 50.0),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsetsDirectional.only(start: 10),
                            height: 80,
                            width: 80,
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/85239612?v=4"),
                              maxRadius: 15,
                              minRadius: 15,
                            ),
                          ),
                          const Expanded(
                            child: ListTile(
                              title: Text(
                                "shaimaa.a.fakhraldin@gmail.com",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    letterSpacing: 2.0),
                              ),
                              subtitle: Text(
                                "Senior flutter developer ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 2.0),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

// -----------------------------------------------------------------------------
// Content
// -----------------------------------------------------------------------------
class _Content extends StatefulWidget {
  const _Content({super.key});

  @override
  State<_Content> createState() => __ContentState();
}

class __ContentState extends State<_Content> {
  final _scrollController = ScrollController();

  CharacterPageCubit get pageCubit => context.read<CharacterPageCubit>();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext ctx) {
    final list = ctx.select((CharacterPageCubit b) => b.state.characters);
    print(pageCubit.state.characters);
    final hasEnded =
        ctx.select((CharacterPageCubit b) => b.state.hasReachedEnd);

    return Transform.translate(
      offset: Offset(0.0, MediaQuery.of(context).size.height * 0.0132),
      child: ListView.builder(
        key: const ValueKey('character_page_list_key'),
        shrinkWrap: true,
        padding: const EdgeInsets.all(0.0),
        scrollDirection: Axis.vertical,
        primary: true,
        itemCount: hasEnded ? list.length : list.length + 1,
        itemBuilder: (BuildContext content, int index) {
          if (index >= list.length) {
            return !hasEnded
                ? const CharacterListItemLoading()
                : const SizedBox();
          }
          final country = list[index];
          return AwesomeListItem(
              title: country.name != null ? country.name!.official! : 'No Name',
              content: country.capital.first,
              color: ItemsColors[Random().nextInt(5)],
              image: country.flags!.png!);
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      pageCubit.fetchNextPage();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
