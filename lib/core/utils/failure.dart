abstract class Failure implements Exception{}


class NetworkFailure extends Failure {}

class ServerFailure extends Failure {}

class UnKnownServerFailure extends Failure {}

class CacheFailure extends Failure {}

class InvalidInputFailure extends Failure{}

class IntentFailure extends Failure{}

class PermissionFailure extends Failure{}

class MissedInputFailure extends Failure {}

class AuthorizeFailure extends Failure {}

class AccessFailure extends Failure {}

class ParseFailure extends Failure {}

class NotFoundFailure extends Failure {}

class GoogleAPIFailure extends Failure {}

class AppleAPIFailure extends Failure {}

class NotExistFailure extends Failure {}

class WrongParameterFailure extends Failure {}

class UnknownFailure extends Failure {}

class UnChangeableFailure extends Failure {}

class NeedUpdateFailure extends Failure {
  final bool isForce;
  final int latestVersion;
  NeedUpdateFailure(this.isForce, this.latestVersion);
}
