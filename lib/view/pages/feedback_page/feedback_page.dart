import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobuzz_app/core/cubit/feedback_cubit/feedback_cubit.dart';
import 'package:nobuzz_app/core/cubit/feedback_cubit/feedback_state.dart';
import 'package:nobuzz_app/helpers/style.dart';
import 'package:nobuzz_app/view/pages/feedback_page/widgets/feedback_grid_widget.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  FeedbackCubit get feedbackCubit => context.read<FeedbackCubit>();

  @override
  void initState() {
    super.initState();
    feedbackCubit.getFeedback();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<FeedbackCubit, FeedbackState>(builder: _builder);

  Widget _builder(BuildContext context, FeedbackState state) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text('Informações'),
          centerTitle: true,
        ),
        body: Container(
          decoration: Style.appBackground(),
          child: _makeBody(state),
        ),
      );

  Widget _makeBody(FeedbackState state) {
    if (state is FeedbackErrorState) {
      return Center(
        child: Text(state.errorMessage),
      );
    } else if (state is FeedbackLoadingState) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is FeedbackInitialState) {
      return const Center(
        child: Text('Estado inicial'),
      );
    } else if (state is FeedbackFetchedState) {
      return FeedbackGridWidget(state.result.result);
    }
    return const SizedBox();
  }
}
