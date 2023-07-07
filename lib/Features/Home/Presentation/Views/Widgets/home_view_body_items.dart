import 'package:flutter/material.dart';
import 'home_view_body_column_items.dart';

class HomeViewBodyItems extends StatelessWidget
{
  const HomeViewBodyItems({super.key});

  @override
  Widget build(BuildContext context)
{
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.115),
      physics: const BouncingScrollPhysics(),
      child: const Center(child: HomeViewBodyColumnItems())
    );
  }
}
