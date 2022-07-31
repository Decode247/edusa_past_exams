import 'package:edusa_past_exams/core/imports/imports.dart';

Widget myDrawer() => Drawer(
      backgroundColor: Colors.orange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              hearder(),
              const SizedBox(height: 40),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.handshake),
                label: const Text('Tutors'),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.help),
                label: const Text('Help'),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_add),
                label: const Text('Resources'),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share),
                label: const Text('Share App'),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.star),
                label: const Text('Rate App'),
              ),
            ],
          ),
        ],
      ),
    );
