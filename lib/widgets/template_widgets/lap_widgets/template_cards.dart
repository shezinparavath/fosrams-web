import 'package:flutter/material.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';
import 'package:fosrams_web/controllers/template_controller.dart';
import 'package:fosrams_web/widgets/template_widgets/lap_widgets/template_images.dart';
import 'package:provider/provider.dart';

class TemplateCard extends StatelessWidget {
  const TemplateCard(
      {super.key,
      required this.image,
      required this.title,
      required this.index,
      required this.child});
  final String image;
  final String title;
  final int index;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final templateProvider =
        Provider.of<TemplateController>(context, listen: false);
    return Card(
        color: const Color.fromARGB(255, 131, 185, 156),
        child: Consumer<TemplateController>(
            builder: (context, value, _) => Column(children: [
                  ListTile(
                      onTap: () {
                        templateProvider.triggerDropDown(index);
                      },
                      minLeadingWidth: 20,
                      leading: TemplateImages(image: image),
                      title: Text(title,
                          style: AppStyles.averageText(
                              context: context,
                              color: AppColors.lightGreyColor)),
                      trailing: Icon(
                          value.droppedDown(index) == false
                              ? Icons.keyboard_arrow_down_rounded
                              : Icons.keyboard_arrow_up_rounded,
                          color: AppColors.greyColor)),
                  templateProvider.droppedDown(index) ? child : const SizedBox()
                ])));
  }
}
