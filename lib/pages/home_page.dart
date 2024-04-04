//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../dats/todo_list.dart';
// import '../models/todo.dart';
import '../todo_list.dart';
//  //   ///

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String _email = '';
  final TextEditingController _emailController = TextEditingController();

  // Moved to /data/todo_list.dart
  //  final List<Todo> todos = [
  //   const Todo(
  //       title: 'Buy milk',
  //       description: 'There is no milk left in the fridge!',
  //       priority: Priority.high),
  //   const Todo(
  //       title: 'Make the bed',
  //       description: 'Keep things tidy please..',
  //       priority: Priority.low),
  //   const Todo(
  //       title: 'Pay bills',
  //       description: 'The gas bill needs paying ASAP.',
  //       priority: Priority.urgent),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: TodoList(todos: todos)),

            // form stuff below here
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
              // onChanged: (value) {
              //   debugPrint(value);
              //   setState(() {
              //     _email = value;
              //   });
              // },
            ),
            // const SizedBox(height: 20),
            // Text('Your Email is: $_email'),
            const SizedBox(height: 20),
            FilledButton(
                onPressed: () {
                  debugPrint(_emailController.text);
                },
                child: const Text('Print the email'))
          ],
        ),
      ),
    );
  }
}
