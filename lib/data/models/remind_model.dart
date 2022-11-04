
class RemindModel {
final String reminder;
final int minutes;

  RemindModel({required this.reminder,required this.minutes});

 factory RemindModel.fromJson(Map<String ,dynamic>json){
   return RemindModel(
       reminder: json['reminder'] as String,
       minutes: json['minutes'] as int
   );
 }
}