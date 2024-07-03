class AppError {
  final String title;
  final String message;

  const AppError._({
    required this.title,
    required this.message,
  });

  factory AppError.fromException(Exception error) {
    return const AppError._(title: 'AAA', message: 'NOPS');
  }
}
