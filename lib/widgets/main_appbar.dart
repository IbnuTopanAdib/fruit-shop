import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/pfp.jpg'),
              radius: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'User Name',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Badge(
                    label: Text('3'),
                    alignment: Alignment.topLeft,
                    offset: Offset(-1, -1),
                    child: FaIcon(FontAwesomeIcons.bell),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Badge(
                    label: Text('3'),
                    alignment: Alignment.topLeft,
                    offset: Offset(-1, -1),
                    child: FaIcon(FontAwesomeIcons.commentDots),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
