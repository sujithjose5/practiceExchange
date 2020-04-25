import 'package:flutter/material.dart';

class NewArticleForm extends StatefulWidget {
  @override
  _NewArticleFormState createState() => _NewArticleFormState();
}

class _NewArticleFormState extends State<NewArticleForm> {
  String _title;
  String _category;
  String _articleBody;
  String _tags;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildTitle() {
    return TextFormField(
      initialValue: '',
      decoration: InputDecoration(
        labelText: 'Title',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      validator: (String text) =>
          text.isNotEmpty ? null : 'Title should not be empty',
      style: TextStyle(fontSize: 22),
      onSaved: (String text) {
        setState(() {
          _title = text;
        });
      },
    );
  }

  Widget _buildArticleBody() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Article content',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      validator: (String text) =>
          text.isNotEmpty ? null : 'Title should not be empty',
      style: TextStyle(fontSize: 22),
      onSaved: (String text) {
        setState(() {
          _articleBody = text;
        });
      },
    );
  }

  Widget _buildCategor() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Add Category',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      validator: (String text) =>
          text.isNotEmpty ? null : 'Category should not be empty',
      style: TextStyle(fontSize: 22),
      onSaved: (String text) {
        setState(() {
          _category = text;
        });
      },
    );
  }

  Widget _buildTags() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Add Tags',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      style: TextStyle(fontSize: 22),
      onSaved: (String text) {
        setState(() {
          _tags = text;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            _buildTitle(),
            SizedBox(
              height: 20.0,
            ),
            _buildArticleBody(),
            SizedBox(
              height: 20.0,
            ),
            _buildCategor(),
            SizedBox(
              height: 20.0,
            ),
            _buildTags(),
          ],
        ),
      ),
    );
  }
}
