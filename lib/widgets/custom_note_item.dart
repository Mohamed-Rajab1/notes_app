import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return EditNotesView();
          },
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Build your career with tharwat samy',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  size: 30,
                  color: Colors.black.withValues(alpha: 0.7),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: Text(
                'May 10, 2026',
                style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
