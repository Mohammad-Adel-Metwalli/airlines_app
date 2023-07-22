import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/classes_summary_list_view.dart';
import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/dining.dart';
import 'package:flutter/material.dart';
import 'airlines_experience_text.dart';
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

        const AirlinesExperienceText(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

        const Dining(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

        const ClassesSummaryListView(),
      ],
    );
  }
}
