import 'package:flutter/material.dart';

import '../../widgets/profile/avatar_circle.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var colorScheme = Theme.of(context).colorScheme;

    return CustomScrollView(slivers: [
      SliverAppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        scrolledUnderElevation: 1,
        shape: Border(
          bottom: BorderSide(color: colorScheme.onSurface.withOpacity(0.1)),
        ),
        title: const Text('Notifications',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: AvatarCircle(radius: 24, url: 'https://picsum.photos/200'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        toolbarHeight: size.height * 0.1,
        leadingWidth: size.width * 0.15,
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          Container(
            height: size.height * 0.2,
            color: Colors.white,
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.blue,
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.green,
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.yellow,
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.purple,
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.orange,
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.pink,
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.brown,
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.grey,
          ),
          Container(
            height: size.height * 0.2,
            color: Colors.black,
          ),
        ]),
      )
    ]);
  }
}
