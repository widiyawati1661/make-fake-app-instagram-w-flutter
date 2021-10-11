import 'package:flutter/material.dart';
import 'package:instagram_flutter/edit.dart';

class EditProfileState extends StatefulWidget {
  final String id, name, description, image;
  EditProfileState(this.id, this.name, this.description, this.image);
  @override
  _EditProfileStateState createState() =>
      _EditProfileStateState(this.id, this.name, this.description, this.image);
}

class _EditProfileStateState extends State<EditProfileState> {
  final String id, name, description, image;
  _EditProfileStateState(this.id, this.name, this.description, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {},
              );
            },
          ),
          title: Text(
            id,
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu_sharp,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Column(children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'See Covid-19 Bussiness Resources',
                style: TextStyle(color: Colors.blue),
                textAlign: TextAlign.center,
              )),
          Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('profil_image.jpg'),
                    radius: 50,
                    //AssetImage('sample.jpg')
                  )),
              //children: <Widget>[Image.asset('asset/sample.jpg')])),
              Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: <Widget>[
                        Text('0'),
                        Text('Posts',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: <Widget>[
                        Text('120'),
                        Text('Followers',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: <Widget>[
                        Text('130'),
                        Text('Following',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
                ],
              ),
            ],
          ),
          //KONTEN
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            )
          ]),
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(description),
            )
          ]),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Edit(id, name, description, image)),
                    );
                  },
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Promotions',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Insights',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
          ])
        ]));
  }
}

class Asset {}
