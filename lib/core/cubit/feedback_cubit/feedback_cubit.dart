import 'package:bloc/bloc.dart';
import 'package:nobuzz_app/core/cubit/feedback_cubit/feedback_state.dart';
import 'package:nobuzz_app/repository/feedback_repository.dart';

class FeedbackCubit extends Cubit<FeedbackState> {
  FeedbackCubit({FeedbackRepository? feedbackRepository})
      : _feedbackRepository = feedbackRepository ?? FeedbackRepository(),
        super(FeedbackInitialState());

  final FeedbackRepository _feedbackRepository;

  Future<void> getFeedback() async {
    emit(FeedbackLoadingState());

    try {
      final feedback = await _feedbackRepository.getFeedback();

      if (feedback != null) {
        emit(FeedbackFetchedState(feedback));
      } else {
        emit(FeedbackErrorState('Dados nulos!'));
      }
    } on Exception {
      emit(FeedbackErrorState('Erro ao obter dados!'));
    }
  }
}
