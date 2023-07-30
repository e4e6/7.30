import'do_model.dart';
class Functions{

  List<DoModel> doData=[];

  void addDoData({required DoModel temp}){
    doData.add(temp);
  }
  void changeDoDone({required int index}){
    if (doData.elementAt(index).doDone == false){ doData.elementAt(index).doDone=true;}
    else{ doData.elementAt(index).doDone=false;}
  }

  void removeDoData({required int index}){
    doData.removeAt(index);
  }
}