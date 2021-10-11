import 'package:flutter/material.dart';
import 'profile.dart';

class Edit extends StatefulWidget {
  final String id, name, description, imageURL;
  Edit(this.id, this.name, this.description, this.imageURL);
  @override
  _EditState createState() =>
      _EditState(this.id, this.name, this.description, this.imageURL);
}

class _EditState extends State<Edit> {
  String id, name, description, imageURL;
  _EditState(this.id, this.name, this.description, this.imageURL);

  alertEditProfile(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text('Profile Change'),
            content: Text('do you want to save your edits?',
                textAlign: TextAlign.center),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Edit')),
              TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfileState(
                                  id, name, description, imageURL)));
                    });
                  },
                  child: Text('Save'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "X",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ));
            },
          ),
          title: Text(
            'EDIT PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu_sharp,
                color: Colors.blue,
              ),
              onPressed: () {
                alertEditProfile(context);
              },
            ),
          ],
        ),
        body: Column(children: <Widget>[
          Row(children: <Widget>[
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: Text('id',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black)),
            )
          ]),
          Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: TextField(
                onChanged: (idValue) {
                  setState(() {
                    this.id = idValue;
                  });
                },
              )),
          Row(children: <Widget>[
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),

              child: Text('Name',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black)),
            )
          ]),
          Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: TextField(
                onChanged: (namaValue) {
                  name = namaValue;
                },
              )),
          Row(children: <Widget>[
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: Text('description',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black)),
            ),
          ]),
          Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: TextField(
                onChanged: (descriptionValue) {
                  setState(() {
                    description = descriptionValue;
                  });
                },
              )),
          Row(children: <Widget>[
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: Text('Photo URL',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black)),
            )
          ]),
          Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: TextField(onChanged: (imageValue) {
                setState(() {
                  imageURL = imageValue;
                });
              })),
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: Text(
                  'Provide your personal information, event if the accounts is used for business, a',
                  maxLines: 20,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black)),
            ),
          ]),
          Row(children: <Widget>[
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: Text(
                  'Pet or something else. This won`t be a part of your public profile',
                  maxLines: 20,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black)),
            )
          ])
        ]));
  }
}
