import 'package:flutter/material.dart';
import 'package:studyflow/core/widgets/app_page.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Olá!'),
                actions: <Widget> [
                    IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.person)
                    )
                ],
            ),
            body: AppPage(
                //SingleChildScrollView: allows scrolling the page without a vertical overflow
                child: SingleChildScrollView(
                    child: Column(
                        //CrossAxisAlignment.stretch in the main column: sections fill the available width
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                            _GreetingSection(),
                            SizedBox(height: 32),
                            _StudySummarySection(),
                            SizedBox(height: 32),
                            _SubjectsSection(),
                            SizedBox(height: 32),
                            _RecentActivitySection(),
                        ],
                    ),
                )
            ),
        );
    }
}

class _GreetingSection extends StatelessWidget {
    const _GreetingSection();

    @override
    Widget build(BuildContext context) {
        return const Text('O que vamos estudar hoje?');
    }
}

class _StudySummarySection extends StatelessWidget {
    const _StudySummarySection();

    @override
    Widget build(BuildContext context) {
        return Column(
            //CrossAxisAlignment.start in the sections: title and content of each section start in the left. It's a local rule.
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                    'Seu progresso hoje',
                    style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 12,),
                const Text('1h 30min estudados'),
                SizedBox(height: 16,),
                //Align for the button: we centralize only the button, not all the page. 
                Align(
                    alignment: Alignment.center,
                    child: OutlinedButton(
                        onPressed: () {}, 
                        child: const Text('Continuar estudando'),
                    ),
                )
            ],
        );
    }
}

class _SubjectsSection extends StatelessWidget {
    const _SubjectsSection();

    @override
    Widget build(BuildContext context) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                    'Matérias',
                    style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 12),
                const _SubjectRow(name: 'Flutter', progress: '65%'),
                const _SubjectRow(name: 'Dart', progress: '40%'),
                const _SubjectRow(name: 'Inglês', progress: '80%'),
            ],
        );
    }

}

//Row for each subject: we use Expanded, so the name fills the remaining space and the percentages stay at the end.
//The percentages stay aligned vertically, we don't need to guess fixed width. 
class _SubjectRow extends StatelessWidget {
    const _SubjectRow({
        required this.name,
        required this.progress,
    });

    final String name;
    final String progress;

    @override
    Widget build(BuildContext context) {
        return Row(
            children: [
                Expanded(child: Text(name)),
                Text(progress),
            ],
        );
    }
}

class _RecentActivitySection extends StatelessWidget {
    const _RecentActivitySection();

    @override
    Widget build(BuildContext context) {
        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                    'Atividade recente',
                    style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 12),
                const Text('• Flutter — Widgets'),
                const Text('• Dart — Futures'),
                const Text('• Inglês — Vocabulary'),
            ],
        );
    }
}
