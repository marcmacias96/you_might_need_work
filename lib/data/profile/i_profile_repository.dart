import 'package:dartz/dartz.dart';
import 'package:you_might_need_work/data/core/models/models.dart';
import 'package:you_might_need_work/data/profile/models/models.dart';

abstract class IProfileRepository {
  Future<Either<CoreFailure, Profile>> getProfile();
  Future<Either<CoreFailure, Unit>> createProfile();
}
