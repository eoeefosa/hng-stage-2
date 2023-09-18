import 'package:flutter/material.dart';

import '../model/cv_model.dart';

class EditCVScreen extends StatefulWidget {
  final CvModel cvmodel;
  final Function(CvModel) updateCvData;

  const EditCVScreen({
    required this.cvmodel,
    super.key,
    required this.updateCvData,
  });

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
              const SizedBox(
                height: 16,
              ),
              const Text('PersonalBio'),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: personalbioController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                maxLines: 10,
                // maxLength: null,
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: ElevatedButton(
                  
                  onPressed: () {
                    setState(() {
                      final updatedCvData = widget.cvmodel.copyWith(
                        firstName: firstnameController.text,
                        lastName: lastnameController.text,
                        middleName: middlenameController.text,
                        slackUsername: slackUsernameController.text,
                        githubHandle: githubHandleController.text,
                        personalBio: personalbioController.text,
                      );
                      widget.updateCvData(updatedCvData);
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Save'),
                ),
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
