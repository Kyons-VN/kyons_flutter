class AppPaths {
  AppPaths._();

  static const home = AppPath(path: '/home', serverRedirectName: 'HomePage');
  static const signIn = AppPath(path: '/sign-in');
  static const signOut = AppPath(path: '/sign-out');
  static const signUp = AppPath(path: '/sign-up');
  static const resetPassword = AppPath(path: '/reset-password');
  static const settings = AppPath(path: '/settings');
  static const themeSettings = AppPath(path: '/settings/theme');
  static const languageSettings = AppPath(path: '/settings/language');
  static const design = AppPath(path: '/design');
  static const game = AppPath(path: '/game');
  static const classProgram = AppPath(path: '/class-program');
  static const test = AppPath(path: '/test');
  static const diagnosticTestDecision =
      AppPath(path: '/diagnostic-test-decision', serverRedirectName: 'DiagnosticTest');
  static const diagnosticTest = AppPath(path: '/diagnostic-test');
  static const learningPath = AppPath(path: '/learning-path', serverRedirectName: 'LearningPath');
  static const lessonPage = AppPath(path: '/lesson/:id');
  static const newLesonPage = AppPath(path: '/new-lesson');
  static const waitingForTutor = AppPath(path: '/waiting-for-tutor');
  static const profile = AppPath(path: '/profile');
  static const mockTestLearningGoal = AppPath(path: '/mock-test', serverRedirectName: 'MockTest');
  static const mockTestTopic = AppPath(path: '/mock-test/:lgId/select-topic');
  static const mockTestTest = AppPath(path: '/mock-test/:id/test');
  static const mockTestShare = AppPath(path: '/share-mocktest/:ref');
  static const newUser = AppPath(path: '/new-user');
  static const termsOfService = AppPath(path: '/terms-of-service');
  static const pageNotfound = AppPath(path: '/page-not-found');

  static AppPath getByRedirectName(String serverRedirectName) {
    if (serverRedirectName == home.serverRedirectName) {
      return home;
    } else if (serverRedirectName == learningPath.serverRedirectName) {
      return learningPath;
    } else if (serverRedirectName == mockTestLearningGoal.serverRedirectName) {
      return mockTestLearningGoal;
    } else {
      return home;
    }
  }
}

class AppPath {
  final String path;
  final String? serverRedirectName;
  final String? description;
  const AppPath({required this.path, this.serverRedirectName, this.description});
  String pathId(String id) => path.replaceAll(':id', id);
}
