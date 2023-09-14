import 'package:flutter/material.dart';

class CustomAddToDoItem extends StatelessWidget {
  const CustomAddToDoItem({
    super.key,
    required TextEditingController todoController,
  }) : _todoController = todoController;

  final TextEditingController _todoController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin:
            const EdgeInsets.only(right: 20, left: 20, bottom: 20),
        padding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 10,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: _todoController,
          decoration: const InputDecoration(
            hintText: 'Add a new todo item',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
