import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/classes_summary_list_view.dart';
import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/dining.dart';
import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/popular_routes_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_home_text.dart';
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

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.06),

        const CustomHomeText(textOfHome: 'THE AIRLINES EXPERIENCE'),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

        const Dining(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

        const ClassesSummaryListView(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

        const CustomHomeText(textOfHome: 'Popular Routes'),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

        const PopularRoutesListView(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05)
      ],
    );
  }
}
