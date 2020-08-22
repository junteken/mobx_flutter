import 'package:english_words/english_words.dart';
import 'package:mobx/mobx.dart';

part 'saved_data.g.dart';

class Saved_data= _Saved_data with _$Saved_data;

abstract class _Saved_data with Store{

  @observable
  Set<WordPair> saved= Set<WordPair>();
  
  @computed
  Set<WordPair> get saved_data => saved;

  @action
  addToOrRemoveFromSavedList(WordPair item){
    if(saved.contains(item)){
      print('${item.toString()} 이 제거되었습니다');
      saved.remove(item);
    }else{
      print('${item.toString()} 이 추가되었습니다');
      saved.add(item);
    }
    print(saved.toString());
  }
}

final saved_data_object = Saved_data();