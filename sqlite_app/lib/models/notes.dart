class NoteModel{
  final int? id;
final String titel;
final String content;
NoteModel({
  this .id,required this.content, required this.titel
});

toMap(){
  return 'id';id;
  'titel';titel;
  'content';content;

}
}