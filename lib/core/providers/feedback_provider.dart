import 'package:flutter/material.dart';
import 'package:nobuzz_app/model/feedback_model.dart';
import 'package:nobuzz_app/repository/feedback_repository.dart';

class FeedbackProvider extends ChangeNotifier {
  FeedbackProvider({FeedbackRepository? feedbackRepository})
      : _feedbackRepository = feedbackRepository ?? FeedbackRepository();

  final FeedbackRepository _feedbackRepository;
  bool isLoading = false;
  FeedbackRes? _feedback;
  FeedbackRes? get feedback => _feedback;

  Future<void> getFeedback() async {
    isLoading = true;
    notifyListeners();

    final response = await _feedbackRepository.getFeedback();

    _feedback = response;
    isLoading = false;
    notifyListeners();
  }
}
