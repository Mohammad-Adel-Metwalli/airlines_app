import 'package:flutter/material.dart';
import 'home_view_body_column_items.dart';

class HomeViewBodyItems extends StatefulWidget
{
  const HomeViewBodyItems({super.key});

  @override
  State<HomeViewBodyItems> createState() => _HomeViewBodyItemsState();
}

class _HomeViewBodyItemsState extends State<HomeViewBodyItems>
{
  @override
  Widget build(BuildContext context)
{
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.150),
      physics: const BouncingScrollPhysics(),
      child: const Center(child: HomeViewBodyColumnItems())
    );
  }
}
