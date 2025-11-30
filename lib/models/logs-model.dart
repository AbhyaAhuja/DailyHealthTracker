class Logs {
  final int id;
  final String todo;
  final bool completed;
  final int userId;

  Logs({
    required this.id,
    required this.todo,
    required this.completed,
    required this.userId,
  });

  factory Logs.fromJson(Map<String, dynamic> json) {
    return Logs(
      id: json['id'],
      todo: json['todo'],
      completed: json['completed'],
      userId: json['userId'],
    );
  }
}