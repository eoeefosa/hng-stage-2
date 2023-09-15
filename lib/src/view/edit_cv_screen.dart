import 'package:flutter/material.dart';

import '../model/cv_model.dart';

class EditCVScreen extends StatefulWidget {
  final CvModel cvmodel;

  const EditCVScreen(this.cvmodel, {super.key});

  @override
  State<EditCVScreen> createState() => _EditCVState();
}

class _EditCVState extends State<EditCVScreen> {
  late TextEditingController firstnameController;
  late TextEditingController lastnameController;
  late TextEditingController middlenameController;

  late TextEditingController slackUsernameController;
  late TextEditingController githubHandleController;
  late TextEditingController personalbioController;

  @override
  void initState() {
    super.initState();
    firstnameController = TextEditingController(text: widget.cvmodel.firstName);
    middlenameController =
        TextEditingController(text: widget.cvmodel.middleName);
    lastnameController = TextEditingController(text: widget.cvmodel.lastName);
    slackUsernameController =
        TextEditingController(text: widget.cvmodel.slackUsername);
    githubHandleController =
        TextEditingController(text: widget.cvmodel.githubHandle);
    personalbioController =
        TextEditingController(text: widget.cvmodel.personalBio);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit CV")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: firstnameController,
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
              TextField(
                controller: middlenameController,
                decoration: const InputDecoration(labelText: 'Middle Name'),
              ),
              TextField(
                controller: lastnameController,
                decoration: const InputDecoration(labelText: 'Last Name'),
              ),
              TextField(
                controller: slackUsernameController,
                decoration: const InputDecoration(labelText: 'Slack Username'),
              ),
              TextField(
                controller: githubHandleController,
                decoration: const InputDecoration(labelText: 'GitHub Handle'),
              ),
              TextField(
                controller: personalbioController,
                decoration: const InputDecoration(labelText: 'PersonalBio'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.cvmodel.firstName = firstnameController.text;
                    widget.cvmodel.lastName = lastnameController.text;
                    widget.cvmodel.middleName = middlenameController.text;
                    widget.cvmodel.slackUsername = slackUsernameController.text;
                    widget.cvmodel.githubHandle = githubHandleController.text;
                    widget.cvmodel.personalBio = personalbioController.text;
                  });
                  Navigator.pop(context);
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    firstnameController.dispose();
    middlenameController.dispose();
    lastnameController.dispose();

    slackUsernameController.dispose();
    githubHandleController.dispose();
    personalbioController.dispose();
    super.dispose();
  }
}
