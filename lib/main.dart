import 'package:ecom/app.dart';
import 'package:ecom/providers/someprovider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SomeProvider()),
      ],
      child: MyApp(),
    ),
  );
}
