import 'package:flutter/material.dart';
import 'package:image_search_app_09_clean_architecture/data/data_source/pixabay_api.dart';
import 'package:image_search_app_09_clean_architecture/data/repository/photo_api_repository_impl.dart';
import 'package:image_search_app_09_clean_architecture/presentation/home/home_screen.dart';
import 'package:image_search_app_09_clean_architecture/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) =>
            HomeViewModel(PhotoApiRepositoryImpl(PixabayApi(http.Client()))),
        child: const HomeScreen(),
      ),
    );
  }
}
