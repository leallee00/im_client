import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/global/models/award_model.dart';
import 'package:quliao/modules/mine/mine_page_controller.dart';
import 'package:quliao/modules/mine/repository/mine_repository.dart';
import 'package:quliao/modules/mine/widgets/signin_success_dialog.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/pub/func.dart';

class SignInPageController extends GetxController {
  static SignInPageController get to => Get.find();

  final Rx<TaskSignUpInfoRsp?> signData = Rx(null);
  final RxList<SignUpLog> signInLog = RxList();
  final Rx<TaskSignUpStatusRsp?> signUpInfo = Rx(null);

  final RxList<SubTask> todoList = RxList();
  final RxList<SubTask> completedList = RxList();

  final _repository = MineRepository();

  @override
  void onReady() {
    super.onReady();
    getSignData();
  }

  Future<void> getSignData() async {
    await _repository.getSigninTaskInfo(
      callback: (value) async {
        signData.value = value;

        final subTaskList = value.task.subTask;
        todoList.clear();
        completedList.clear();

        for (final item in subTaskList) {
          if (item.taskGoingStatus == TaskGoingStatus.Going ||
              item.taskGoingStatus == TaskGoingStatus.Default) {
            todoList.add(item);
          }
          if (item.taskGoingStatus == TaskGoingStatus.Rewarded ||
              item.taskGoingStatus == TaskGoingStatus.Completed ||
              item.taskGoingStatus == TaskGoingStatus.Receipted) {
            completedList.add(item);
          }
        }

        await _repository.getSignInStatus(
          callback: (value) {
            signUpInfo.value = value;
            signInLog.value = value.signUpLog;
          },
        );
      },
    );
  }

  Future<void> signUp(
    BuildContext context,
    SubTask subTask,
    SignUpLog? logData,
  ) async {
    final isToday = await _isToday(logData);
    if (!isToday) {
      return;
    }
    final continueTimes = logData?.continueTimes ?? 0;
    if (continueTimes > 0) {
      return;
    }
    await _repository.signUp(
      callback: (value) {
        final awards = value.awards;
        if (awards.isEmpty) {
          showToast('签到成功');
          MinePageController.to.getSignStatus();
        } else {
          final award = awards.first;
          final awardModel = AwardModel.fromJson(
            award.awardsInstanceData,
          );
          awardModel.name = award.awardsTemplate.name;
          awardModel.icon = award.awardsTemplate.icon;
          awardModel.desc = award.awardsTemplate.description;
          SignInSuccessDialog.show(
            context,
            awardModel,
          );
        }
        getSignData();
      },
    );
  }

  Future<bool> _isToday(SignUpLog? logData) async {
    if (null == logData) {
      return false;
    }
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      logData.createdAt.toInt() * 1000,
    );
    final dateNow = DateTime.now();
    return dateTime.year == dateNow.year &&
        dateTime.month == dateNow.month &&
        dateTime.day == dateNow.day;
  }
}
