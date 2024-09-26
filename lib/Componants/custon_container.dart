import 'package:flutter/material.dart';
import 'package:hammoud/view/notes_edit.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.only(
          top: 25,
          bottom: 30,
          left: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return const EditNote();
              })),
              title: const Text(
                'Title',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              subtitle: Text(
                'subTitle',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 20,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: const Icon(
                  Icons.delete,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Text(
                'Data',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
