import 'package:flutter/material.dart';
import 'package:flutter_hacker_news/services/api_caller.dart';
import 'package:flutter_hacker_news/utils/constants.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hacker News'),
      ),
      body: Center(
        // ignore: undefined_method
        child: FutureBuilder<List>(
          future: ApiCaller().fetchStories(Constants.topStoriesListUrl),
          builder: (context, dataResponse) {
            if(dataResponse.hasData){
              return Text(dataResponse.data.toString());
            }
            else if(dataResponse.hasError){
              return Text('SOME ERROR OCCURED');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
