import 'package:flutter/material.dart';
import 'package:jobs_ui/models/category_model.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categoryList.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CategoryItem(
              assetIcon: categoryList[index].assetIcon,
              title: categoryList[index].title,
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String assetIcon, title;

  const CategoryItem({super.key, required this.assetIcon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(side: BorderSide.none),
        elevation: 0
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            Image(
              width: 32,
              height: 32,
              image: AssetImage(assetIcon),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
