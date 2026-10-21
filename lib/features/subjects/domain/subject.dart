final class Subject {

    final int id;
    final String subject;

    Subject({
        required this.id,
        required this.subject
    });

    //From JSON to instance
    factory Subject.fromJson(Map<String, dynamic> json) {
        if(json case {
            'id': int id,
            'subject': String subject,
        }) {
            return Subject(
                id: id,
                subject: subject
            );
        } else {
            throw FormatException('Formato JSON inválido');
        }
    }

    //From instance to JSON
    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'subject': subject,
        };
    }
}