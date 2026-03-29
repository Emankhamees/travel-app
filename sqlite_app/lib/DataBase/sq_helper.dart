import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite_app/models/notes.dart';
 
 
 class Sqhelper {
  Database? database;
  initialDatabase()async{
    String db = await getDatabasesPath();
    String path = join(db,'notes.db');
     await openDatabase(path,
    version:1,
    onCreate:
     (db, version) {
      Batch batch =db.batch();

     batch.execute('CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)'); 
     batch.commit();  
    },
    );
   
     return database;

  }
  getDatabase()async{
    if(database!=null){
      return database;
    }else{
      database=await initialDatabase();
      return database;
    }
  }

  //1_
  insertNotes (NoteModel note)async{
    Database db =await getDatabase();
    Batch batch =db.batch();
    batch.insert("notes", note.toMap());
    ConflictAlgorithm.replace;
    batch.commit();
    
    
      }

//2_
      loadNotes()async{
        Database db =await getDatabase();
        List<Map>maps =await db.query('notes');
       return List.generate(maps.length, (i){
        return NoteModel(id: maps[i]['id'], content: maps[i]['content'], titel: maps[i]['titel']);
       });
        
      }

      //3_
      update (NoteModel note)async{
        Database db=await getDatabase();
        Batch batch= db.batch();
        batch.update("notes",
         note.toMap(),
         whereArgs: [note.id],
         where: "id =? ");
         batch.commit();
      }
      //4_
      deleteNote(int id)async{

        Database db =await getDatabase();
        await db.delete("notes",whereArgs: [id],
        where: "id=?  ");
      }
}