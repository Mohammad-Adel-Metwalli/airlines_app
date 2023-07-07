import 'package:flutter/material.dart';
import 'offers_list_view.dart';

class HomeViewBodyColumnItems extends StatelessWidget
{
  const HomeViewBodyColumnItems({super.key});

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
