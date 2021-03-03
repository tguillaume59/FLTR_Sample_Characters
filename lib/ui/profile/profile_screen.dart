import 'package:Sample_Characters/services/characters/models/character.dart';
import 'package:Sample_Characters/ui/profile/profile_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key, this.currentCharacter, this.profileScreenBloc}) : super(key: key);

  final ProfileScreenBloc profileScreenBloc;

  final Character currentCharacter;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  _ProfileScreenState();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        children: <Widget>[
          Row(
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.currentCharacter.pictureUrl))
                  )
                ),
                Container(
                  height: 250.0,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              0, 12.0, 12.0, 6.0),
                          child: Text(
                            widget.currentCharacter.firstName,
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            widget.currentCharacter.lastName,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ]
                    )
                  )
                )
                ]
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      0, 12.0, 12.0, 6.0),
                  child: Text(
                    "Age = ${widget.currentCharacter.age}",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    "Job = ${widget.currentCharacter.job}",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  ),
                )
              ]
          )
        ],
      )
    );
  }
}