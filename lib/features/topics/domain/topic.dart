final class Topic {

  final int id;
  final String topic;
  final int subjectId;

  Topic({
    required this.id,
    required this.topic,
    required this.subjectId
  });

    factory Topic.fromJson(Map<String, dynamic> json) {
        if (json case {
            'id': int id,
            'topic': String topic,
            'subjectId': int subjectId
        }) {
            return Topic(
                id: id, 
                topic: topic, 
                subjectId: subjectId
            );
        } else {
            throw FormatException('Formato JSON inválido');
        }
    }

    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'topic': topic,
            'subjectId': subjectId
        };
    }
  
}