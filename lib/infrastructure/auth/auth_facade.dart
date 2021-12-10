import 'package:bundle/domain/auth/auth_failure.dart';
import 'package:bundle/domain/auth/i_auth_facade.dart';
import 'package:bundle/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:bundle/domain/auth/value_objects.dart';
import 'package:bundle/domain/auth/user.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  @override
  Future<Option<User>> getSignedInUser() async {
    // TODO
    User user = User(
      id: UniqueId(),
      name: StringSingleLine('Matt'),
      emailAddress: EmailAddress('matt@matt.com'),
    );
    return some(user);
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
