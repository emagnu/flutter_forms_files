//  //   ///
//  Import LIBRARIES
//  Import FILES
import '../models/todo.dart';
//  //   ///

final List<Todo> todos = [
  const Todo(
      title: 'Buy milk',
      description: 'There is no milk left in the fridge!',
      priority: Priority.high),
  const Todo(
      title: 'Make the bed',
      description: 'Keep things tidy please..',
      priority: Priority.low),
  const Todo(
      title: 'Pay bills',
      description: 'The gas bill needs paying ASAP.',
      priority: Priority.urgent),
];
