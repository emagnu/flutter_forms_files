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
  final GlobalKey<FormState> _formGlobalKey = GlobalKey<FormState>();

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
            Form(
                key: _formGlobalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    // Todo title
                    TextFormField(
                      maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: 'Todo Title',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a title';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        debugPrint("Title: $value");
                      },
                    ),
                    // Todo description
                    TextFormField(
                      maxLength: 40,
                      decoration: const InputDecoration(
                        labelText: 'Todo Description',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 5) {
                          return 'Enter a descritipon at least 5 characters long';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        debugPrint("Title: $value");
                      },
                    ),
                    // Priority
                    // Submit button
                    const SizedBox(height: 20),
                    FilledButton(
                      onPressed: () {
                        debugPrint("Form");
                        _formGlobalKey.currentState!.validate();
                      },
                      style: FilledButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: Colors.grey[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text('Add'),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
