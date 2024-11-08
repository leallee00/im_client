library http;

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:quliao/models/user/myinfo.dart';

part 'src/dio_utils.dart';

part 'src/exception.dart';

part 'src/interceptors.dart';

var http = DioUtils.getInstance();
