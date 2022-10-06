import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:movie_preview/commons/styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _leftBorderRadius = Radius.circular(4);
    final _searchTextTheme = Theme.of(context).textTheme.button?.apply(
          color: Colors.grey,
        );
    return Padding(
      padding: const EdgeInsets.only(right: kPadding),
      child: Center(
        child: Material(
          borderRadius: const BorderRadius.only(
            topLeft: _leftBorderRadius,
            bottomLeft: _leftBorderRadius,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0,horizontal: 8),
                child: Icon(
                  EvaIcons.search,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  'Search',
                  style: _searchTextTheme,
                ),
              )
            ],
          ),
          shadowColor: Colors.transparent,
        ),
      ),
    );
  }
}
