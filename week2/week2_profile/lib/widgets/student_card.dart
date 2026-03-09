import 'package:flutter/material.dart';

class StudentCard extends StatefulWidget {
  final String name;
  final String major;
  final int year;

  const StudentCard({super.key, required this.name, required this.major, required this.year});

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: ListTile(
        title: Text(widget.name),
        subtitle: Text('${widget.major} - Year ${widget.year}'),
        trailing: IconButton(
          icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
          color: isFavorite ? const Color.fromARGB(255, 0, 0, 17) : null,
          onPressed: () => setState(() => isFavorite = !isFavorite),
        ),
      ),
    );
  }
}