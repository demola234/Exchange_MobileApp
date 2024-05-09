extension DurationExtension on Duration {
  //Future delay([FutureOr Function()? callback]) async => Future.delayed(this, callback);
  // Calculate the time remaining until the duration is over.
  Duration get remaining => this - DateTime.now().difference(DateTime.now());

  // Returns true if the duration is over.
  bool get isOver => remaining <= Duration.zero;

  // Returns true if the duration is not over.
  bool get isNotOver => !isOver;

  // Returns true if the duration is over.
  bool get isOverOrZero =>
      remaining <= Duration.zero || remaining == Duration.zero;

  // Returns true if the duration is not over.
  bool get isNotOverOrZero => !isOverOrZero;
}

extension DateTimeExtension on DateTime {
  //Future delay([FutureOr Function()? callback]) async => Future.delayed(this, callback);
  // Calculate the time remaining until the duration is over.
  Duration get remaining => difference(DateTime.now());

  // 7hr:34mins
  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(this);
    final duration = difference.inSeconds;
    final minutes = difference.inMinutes;
    final hours = difference.inHours;
    final days = difference.inDays;
    final years = difference.inDays ~/ 365;
    final months = difference.inDays ~/ 30;
    if (duration < 60) {
      return '${duration}sec';
    }
    if (minutes < 60) {
      if (minutes == 1) {
        return '${minutes}min';
      } else {
        return '${minutes}mins';
      }
    }
    if (hours < 24) {
      if (hours == 1) {
        return '${hours}hr';
      } else {
        return '${hours}hrs';
      }
    }

    if (days < 30) {
      return '${days}days';
    }
    if (months < 12) {
      return '${months}months';
    }
    if (years > 0) {
      return '${years}years';
    }
    return 'just now';
    // return '${difference.inDays} days';
  }

  // Time Remaining
  String get timeRemaining {
    final now = DateTime.now();
    final difference = this.difference(now);
    final duration = difference.inSeconds;
    final minutes = difference.inMinutes;
    final hours = difference.inHours;
    final days = difference.inDays;
    final years = difference.inDays ~/ 365;
    final months = difference.inDays ~/ 30;
    if (duration < 60) {
      return '${duration}sec';
    }
    if (minutes < 60) {
      if (minutes == 1) {
        return '${minutes}min';
      } else {
        return '${minutes}mins';
      }
    }
    if (hours < 24) {
      if (hours == 1) {
        return '${hours}hr';
      } else {
        return '${hours}hrs';
      }
    }
    if (days < 30) {
      return '${days}days';
    }
    if (months < 12) {
      return '${months}months';
    }
    if (years > 0) {
      return '${years}years';
    }
    return 'just now';
    // return '${difference.inDays} days';
    // return '${difference.inDays} days';
    // return '${difference.inDays} days';
  }

  // Returns true if the duration is over.
  bool get isOver => remaining <= Duration.zero;
}
