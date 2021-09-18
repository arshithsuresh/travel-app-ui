
import 'package:flutter/cupertino.dart';

class HomepageSrollListner extends ChangeNotifier{

  double bottom = 22;
  double _last = 0;

  HomepageSrollListner.initialise(ScrollController controller, [double height = 75]){

    controller.addListener(() {
      final current = controller.offset;
      bottom += _last - current;
      if(bottom <=-height) bottom = -height;
      if(bottom >=22 )bottom = 22;

      _last = current;
      if (bottom <=22 && bottom >-height)
        notifyListeners();      
     });

  }
}