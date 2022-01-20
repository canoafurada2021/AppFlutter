//creating database and data table on version number one


import 'package:path/path.dart';
import 'pckage:sqflite/sqflite.dart'

Future<Database> createDatabase(){
 return getDatabasesPath().then((dbPath){
  final String path = join(dbPath. 'bytebank.db');
   return openDatabase(path, onCreate: (db,version) {
db.execute('CREATE TABLE contacts('
     'id INTEGER PRIMARY KEY, '
      'account_number INTEGER)');
}, version: 1);
});
}
 //importe a class contact
 void save(contact contact){
  createDatabase().then((db){
  final Map<String, dynamic> contactMap = Map();
  contactMap['id'] = contact.id
  db.insert('contacts', values)
  });
 }
 
