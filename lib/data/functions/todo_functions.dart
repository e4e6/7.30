import '../model/todo_info_model.dart';

class TodoFunctions{

  List<TodoInfoModel> todoInfoData = [];

  void addTodoInfo({required TodoInfoModel todoInfoModel}){
    todoInfoData.add(todoInfoModel);
  }

  void changeTodoInfoIsDone({required int index}){
    var isDoneAtCurrentIndex = todoInfoData.elementAt(index).isDone;

    if (isDoneAtCurrentIndex == false){
      todoInfoData.elementAt(index).isDone=true;
    }
    if (isDoneAtCurrentIndex == true){
      todoInfoData.elementAt(index).isDone=false;
    }
  }

  void removeTodoInfoData({required int index}){
    todoInfoData.removeAt(index);
  }
}
