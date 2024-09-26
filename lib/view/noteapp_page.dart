import 'package:flutter/material.dart';
import 'package:hammoud/Componants/custom_appbar.dart';
import 'package:hammoud/Componants/custom_buttonm_sheet.dart';
import 'package:hammoud/Componants/custon_container.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const CustomButtomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 25,
          right: 30,
          bottom: 15,
        ),
        child: Column(
          children: [
            const CustomAppBar(
              icon: Icons.search,
              title: 'Your Notes',
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                itemBuilder: (context, index) {
                  return const NotesItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
