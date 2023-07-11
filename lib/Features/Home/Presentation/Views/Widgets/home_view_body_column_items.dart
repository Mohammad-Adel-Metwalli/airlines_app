import 'package:flutter/material.dart';
import 'offers_list_view.dart';
import 'offers_text.dart';

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
    return Column(
      children: [
        const OffersText(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        const OffersListView(),


      ],
    );
  }
}
