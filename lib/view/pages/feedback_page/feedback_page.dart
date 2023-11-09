import 'package:flutter/material.dart';
import 'package:nobuzz_app/core/providers/feedback_provider.dart';
import 'package:nobuzz_app/helpers/style.dart';
import 'package:nobuzz_app/view/pages/feedback_page/widgets/feedback_grid_widget.dart';
import 'package:provider/provider.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<FeedbackProvider>(context, listen: false).getFeedback();
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            'Informações',
            style: Style.appbarText,
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: Style.appBackground(),
          child: Consumer<FeedbackProvider>(
            builder: (context, value, child) => _makeBody(value),
          ),
        ),
      );

  Widget _makeBody(FeedbackProvider value) {
    if (value.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (value.feedback == null) {
      return const Center(
        child: Text('Erro ao obter dados.'),
      );
    } else if (value.feedback != null) {
      return FeedbackGridWidget(value.feedback!.result);
    }
    return const SizedBox();
  }
}
