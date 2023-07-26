import 'package:advanced5task/service/http_service.dart';
import 'package:advanced5task/service/logger.dart';
import 'package:flutter/material.dart';

import '../model/post_model.dart';
import '../service/http_service.dart';
import '../service/logger.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //apiPostList();
    var post = User(id: 1, name: 'Murod', salary: 12.300, age: 4);
    //apiPostGet(post);
    //apiPostCreate(post);
    apiPostUpdate(post);
    //apiPostDelete(post);
  }

  void apiPostList() {
    Network.GET(Network.API_LIST, Network.paramsEmpty()).then((value) {
      LogService.i(value.toString());
    });
  }

  void apiPostGet(User post) {
    Network.GET(Network.API_GET + post.id.toString(), Network.paramsEmpty())
        .then((value) {
      LogService.i(value.toString());
    });
  }

  void apiPostCreate(User post) {
    Network.POST(Network.API_CREATE, Network.paramsCreate(post)).then((value) {
      LogService.i(value.toString());
    });
  }

  void apiPostUpdate(User post) {
    Network.PUT(
            Network.API_UPDATE + post.id.toString(), Network.paramsUpdate(post))
        .then((value) {
      LogService.i(value.toString());
    });
  }

  void apiPostDelete(User post) {
    Network.DELETE(
            Network.API_DELETE + post.id.toString(), Network.paramsEmpty())
        .then((value) {
      LogService.i(value.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
