import 'package:nobuzz_app/model/feedback_model.dart';

abstract class FeedbackState {}

class FeedbackInitialState extends FeedbackState {}

class FeedbackLoadingState extends FeedbackState {}

class FeedbackFetchedState extends FeedbackState {
  final FeedbackRes result;

  FeedbackFetchedState(this.result);
}

class FeedbackErrorState extends FeedbackState {
  final String errorMessage;

  FeedbackErrorState(this.errorMessage);
}
