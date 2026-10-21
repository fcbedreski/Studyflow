import 'package:flutter/material.dart';
import 'package:studyflow/core/widgets/app_page.dart';
import 'package:studyflow/features/subjects/domain/subject.dart';

class SubjectPage extends StatefulWidget {
  const new({super.key});

  @override
  State<SubjectPage> createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  final List<Subject> subjects = [
    Subject(id: 1, subject: 'Flutter'),
    Subject(id: 2, subject: 'Dart'),
    Subject(id: 3, subject: 'Inglês'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppPage(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: subjects.length,
          itemBuilder: ((context, index) {
            final subject = subjects[index];
            return ListTile(
              title: Text(subject.subject),
            );
          }),
        )
      ),
    );
  }
}