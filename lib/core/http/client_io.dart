import 'dart:io';

import 'package:http/http.dart';
import 'package:http/io_client.dart';


Client createClient() => IOClient(
  HttpClient()
    ..idleTimeout = const Duration(seconds: 5),
);
