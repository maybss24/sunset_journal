import 'package:flutter/material.dart';

class Addcolor extends StatefulWidget {
  const Addcolor({super.key});

  @override
  State<Addcolor> createState() => _AddcolorState();
}

class _AddcolorState extends State<Addcolor> {

  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _description = '';
  String _caption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
        title: Text(
          'Beautiful Ending',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Arial',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children:[
                Text('Add Color',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),

              SizedBox(height: (20)),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Red Twilight',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please add a name';
                    }
                    return null;
                   },
                ),
              SizedBox(height: (20)),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Deep Red Sunset',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.circular(18)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18)
                  )
                ),
                validator: (value){
                  if (value == null || value.isEmpty){
                    return 'Please add a description';
                  }
                  return null;
                },
              ),
              SizedBox(height: (20)),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Caption',
                  hintText: 'Crimson Horizon',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.circular(18)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                  ),
                ),
                validator: (value){
                  if (value == null || value.isEmpty){
                    return 'Please add a caption';
                  }
                  return null;
                },
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(onPressed: (){
                      if(_formKey.currentState!.validate()){
                        print('The form is Validated');
                      }
                    },
                      child: Text('Save',),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink.shade200,
                      ),

                    ),
                  ],
                ),
              ),

            ]
          ),
        ),
      ),
    );
  }
}
