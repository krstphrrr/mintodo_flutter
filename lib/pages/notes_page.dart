import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mintodo_flutter/components/drawer.dart';
import 'package:mintodo_flutter/models/note.dart';
import 'package:mintodo_flutter/models/note_database.dart';
import 'package:provider/provider.dart';
import 'package:mintodo_flutter/components/note_tile.dart';

class NotesPage extends StatefulWidget{
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage>{
  final textController = TextEditingController();

  @override
  void initState(){
    super.initState();
    readNotes();
  }
  // CREATE NOTES
  void createNote(){
    showDialog(
      context: context, 
      builder: (context)=> AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
        content: TextField(
          controller: textController,
        ),
        actions: [
          MaterialButton(onPressed: (){
            // add to db
            context.read<MultiDatabase>().addNote(textController.text);
            // clear the controller 
            textController.clear();
            // pop dialog box
            Navigator.pop(context);
          },
          child: const Text("Create"))
        ],
      ));
  }
  // READ NOTES
  void readNotes(){
    context.read<MultiDatabase>().fetchNotes();
  }
  // update a note 
  void updateNote(Note note){
    textController.text = note.text;
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
      title: const Text("Update Note"),
      content: TextField(controller: textController),
      actions: [
        MaterialButton(
          onPressed: (){
          // update note in db
          context
            .read<MultiDatabase>()
            .updateNote(note.id, textController.text);

          // clear controller 
          textController.clear();

          // pop dialog box
          Navigator.pop(context);
        },
        child: const Text("Update"),
        )
      ],
    )
  );
  }
  // delete a note
  void deleteNote(int id){
    context.read<MultiDatabase>().deleteNote(id);
  }
  @override
  Widget build(BuildContext context){

    //  note database 

    final noteDatabase = context.watch<MultiDatabase>();

    List<Note> currentNotes = noteDatabase.currentNotes;
    return Scaffold(
      // backgroundColor: Colors.gr,
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: const Text("MALDITA SEA"),
        // centerTitle: true,
       ),
       backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: createNote,
        child: Icon(
          Icons.add, 
          color: Theme.of(context).colorScheme.inversePrimary),
        ),
        drawer: const MyDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                "Notes", 
                style: GoogleFonts.dmSerifText(
                  fontSize: 48,
                  color: Theme.of(context).colorScheme.inversePrimary,
              )),
            ),

            // list of notes
            Expanded(
              child: ListView.builder(
                itemCount: currentNotes.length,
                itemBuilder: (context, index){
                  //  get individual note 
                  final note = currentNotes[index];
                  // list tile UI
                  return NoteTile(
                    text: note.text,
                    onEditPressed: ()=>updateNote(note),
                    onDeletePressed: () => deleteNote(note.id),
                    );
                }),
            ),
          ],
        ),
    );
  }
}
