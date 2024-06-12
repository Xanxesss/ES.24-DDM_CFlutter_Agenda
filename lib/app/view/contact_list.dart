import 'package:agenda_crud/app/database/script.dart';
import 'package:agenda_crud/app/app.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ContactList extends StatelessWidget {

  /*
    final list = [
      //'name': '', 'phone': '', 'photo': ''
      {'name': 'Iara', 'phone': '(44) 9 9927-4101', 'photo': 'https://static.vecteezy.com/system/resources/previews/036/280/650/original/default-avatar-profile-icon-social-media-user-image-gray-avatar-icon-blank-profile-silhouette-illustration-vector.jpg'},
      {'name': 'Adrian', 'phone': '(44) 9 9963-2591', 'photo': 'https://static.vecteezy.com/system/resources/previews/036/280/650/original/default-avatar-profile-icon-social-media-user-image-gray-avatar-icon-blank-profile-silhouette-illustration-vector.jpg'},
      {'name': 'Amora', 'phone': '(44) 9 9948-8932', 'photo': 'https://static.vecteezy.com/system/resources/previews/036/280/650/original/default-avatar-profile-icon-social-media-user-image-gray-avatar-icon-blank-profile-silhouette-illustration-vector.jpg'},
    ];
  */

  Future<List<Map<String,dynamic>>> _search() async{
    String path = join(await getDatabasesPath(), 'banco');
    Database db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, v){
        db.execute(createTable);
        db.execute(insert1);
        db.execute(insert2);
        db.execute(insert3);
      }
    );
    return db.query('contact');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _search(),
      builder: (context, futuro){
        print('ehh');
        print(futuro.data);
        //if(futuro.hasData){
          var list = futuro.data!;
          return Scaffold(
            appBar: AppBar(
              title: Text('Contatos'),
              backgroundColor: Color.fromARGB(255, 213, 189, 255),
              actions: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: (){ Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);},
                ),
              ],
            ),
            body: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, i){
                var contact = list[i];
                var avatar = CircleAvatar( backgroundImage: NetworkImage(contact['url_photo']!),);
                return ListTile(
                  leading: avatar,
                  title: Text(contact['name']!),
                  subtitle: Text(contact['phone']!),
                  trailing: Container(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: null,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        } //else{ return Scaffold();}
      //}
    );
  } 
}
