import 'package:quliao/pub/log.dart';
import 'package:quliao/redux/action.dart';
import 'package:quliao/redux/app-state.dart';

AppState mainReducer(AppState state, dynamic action){
  log("mainReducer state charge:$action");
  if (ActionTypes.ActionType_Increment == action){
    state.mainPageState.counter += 1;
  }else if (ActionTypes.ActionType_LogoutSuccess == action){
    state.authState.isLogin = false;
    state.authState.imId = 10001;
  }else if (action is LoginSuccessAction){
    state.authState.isLogin = true;
    state.authState.imId = action.imId;
  }

  return state;
}