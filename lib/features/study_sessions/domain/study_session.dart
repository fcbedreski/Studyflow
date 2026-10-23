class StudySession {

    final int id;
    //Consider startedAt, so the user can create a study session to start it later.
    final DateTime createdAt;
    final Duration duration;
    final int subjectId;

    StudySession({
        required this.id,
        required this.createdAt,
        required this.duration,
        required this.subjectId,
    });

    factory StudySession.fromJson(Map<String, dynamic> json) {

        if(json case {
            'id': int id,
            'createdAt': DateTime createdAt,
            'duration': Duration duration,
            'subjectId': int subjectId
        }) {

            return StudySession(
                id: id,
                createdAt: createdAt,
                duration: duration,
                subjectId: subjectId
            );
        } else {
            throw FormatException('Formato JSON inválido.');
        }
    }

    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'createdAt': createdAt,
            'duration': duration,
            'subjectId': subjectId
        };
    }
}