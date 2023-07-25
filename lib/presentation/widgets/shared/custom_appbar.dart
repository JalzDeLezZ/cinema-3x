import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Icon(Icons.movie_outlined, color: colors.primary, size: 30),
            const SizedBox(width: 10),
            Text('Cinema Movie', style: titleStyle),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.search, color: colors.primary),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
