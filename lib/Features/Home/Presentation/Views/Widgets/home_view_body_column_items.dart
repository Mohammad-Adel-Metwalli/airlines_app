import 'package:flutter/material.dart';
import 'offers_list_view.dart';

class HomeViewBodyColumnItems extends StatefulWidget
{
  const HomeViewBodyColumnItems({super.key});

  @override
  State<HomeViewBodyColumnItems> createState() => _HomeViewBodyColumnItemsState();
}

class _HomeViewBodyColumnItemsState extends State<HomeViewBodyColumnItems>
{
  @override
  Widget build(BuildContext context)
  {
    return const Column(
      children: [
        OffersListView(),

      ],
    );
  }
}
