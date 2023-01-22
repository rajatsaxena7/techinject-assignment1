import 'package:flutter/material.dart';

class SliverAppBarBldr extends StatelessWidget {
  const SliverAppBarBldr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      pinned: true,
      centerTitle: false,
      expandedHeight: 300.0,
      stretch: true,
      flexibleSpace: const FlexibleSpaceBar(
        stretchModes: [StretchMode.blurBackground],
        background: Image(
          image: AssetImage('assets/feet-on-weight-scale-vector.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
