  
  import 'package:shared_preferences/shared_preferences.dart';

class CachHelper {
    static late SharedPreferences sharedPreferences;
    static initial ()async{
      sharedPreferences =await SharedPreferences.getInstance();
      
    }
    static Future<bool> saveData ({
      required String key,required dynamic value
    })
    async{
      if (value is int){
        return await sharedPreferences.setInt(key, value);

      }else if(value is double){
        return await sharedPreferences.setDouble(key, value);

      }else if(value is bool){
        return await sharedPreferences.setBool(key, value);

      }else if(value is String){
        return await sharedPreferences.setString(key, value);

      }else{
       return await sharedPreferences.setStringList(key, value);
 
      }


      }


     static dynamic getInsData ({
      required String key
     }) {
      return sharedPreferences.get(key);
     }
     static Future<bool> removData ({
      required String key
     }) async{
      return await sharedPreferences.remove(key);

     }
     static Future<bool> cootainsKey ({
      required String key
     }) async{
      return sharedPreferences.containsKey(key);

     }
      static Future<bool> clear () async{
      return sharedPreferences.clear();

     }

    }
  
  
  





