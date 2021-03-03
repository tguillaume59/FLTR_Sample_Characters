import 'package:Sample_Characters/services/characters/models/character.dart';
import 'package:Sample_Characters/ui/profile/profile_screen.dart';
import 'package:Sample_Characters/ui/profile/profile_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'home_screen_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.homeScreenBloc}) : super(key: key);

  final HomeScreenBloc homeScreenBloc;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _HomeScreenState();

  @override
  void initState() {
    super.initState();
    widget.homeScreenBloc.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Les 100"),
        ),
        body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: ListView.builder(
          itemCount: widget.homeScreenBloc.listCharacters.length,
          itemBuilder: (context, index) {
            return new GestureDetector(
                onTap: () =>
                    onItemSelected(widget.homeScreenBloc.listCharacters[index]),
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: 100.0,
                    child: Row(
                      children: <Widget>[
                        //region image view
                        Container(
                          height: 100.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(widget.homeScreenBloc
                                      .listCharacters[index].pictureUrl))),
                        ),
                        //end region image view
                        Container(
                          height: 100,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0, 12.0, 12.0, 6.0),
                                  child: Text(
                                    widget.homeScreenBloc.listCharacters[index]
                                        .getFullName(),
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    _getJob(widget
                                        .homeScreenBloc.listCharacters[index]),
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ));
          },
        )));
  }

  String _getJob(Character character) {
    String job;

    if (character.job.isNotEmpty) {
      job = character.job;
    } else {
      job = "N/A";
    }
    return "Job = $job";
  }

  void onItemSelected(Character selectedCharacter) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProfileScreen(
                currentCharacter: selectedCharacter,
                profileScreenBloc: GetIt.I.get<ProfileScreenBloc>())));
  }
}
