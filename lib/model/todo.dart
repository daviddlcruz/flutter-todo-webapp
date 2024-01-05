class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: '30 min ejercicios', isDone: false),
      ToDo(id: '02', todoText: 'Salir al trabajo a las 6:40am'),
      ToDo(id: '03', todoText: 'Revisar emails', isDone: true),
      ToDo(id: '04', todoText: 'Caminar 1h al dia', isDone: true),
      ToDo(id: '05', todoText: 'Estudiar ideas de sidehustle')
    ];
  }
}
