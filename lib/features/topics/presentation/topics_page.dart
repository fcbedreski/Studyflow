import 'package:flutter/material.dart';
import 'package:studyflow/core/widgets/app_page.dart';
import '../../subjects/domain/subject.dart';
import '../domain/topic.dart';

class TopicsPage extends StatelessWidget {
    const TopicsPage({
        super.key,
        required this.subject
    });

    final Subject subject;

    static final List<Topic> _mockedTopics = [
        Topic(id: 1, topic: 'Widgets', subjectId: 1),
        Topic(id: 2, topic: 'Layouts', subjectId: 1),
        Topic(id: 3, topic: 'Futures', subjectId: 2),
        Topic(id: 4, topic: 'Vocabulary', subjectId: 3),
    ];

    @override
    Widget build(BuildContext context) {
        final topics = _mockedTopics
        .where((topic) => topic.subjectId == subject.id)
        .toList();

        return Scaffold(
        appBar: AppBar(
            title: Text(subject.subject),
        ),
            body: AppPage(
                child: ListView.builder(
                itemCount: topics.length,
                    itemBuilder: (context, index) {
                        final topic = topics[index];

                        return ListTile(
                            title: Text(topic.topic),
                        );
                    }
                )
            ),
        );
    }
}